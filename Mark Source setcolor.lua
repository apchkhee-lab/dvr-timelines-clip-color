DebugLevel = 1

-- Will be populated with Multicam angles
Angles = {}
Sources = {}

AngleNames = {}

SourceNames = {}

-- Project variables

projMan = Resolve():GetProjectManager()
curProj = projMan:GetCurrentProject()
curTimeline = curProj:GetCurrentTimeline()
numTracks = curTimeline:GetTrackCount("video")
ui = fu.UIManager
disp = bmd.UIDispatcher(ui)

local ColorIndex = 1
local SourceColorIndex = 1
local angleOrder = 1
local srcOrder = 1

function AngleExists(items, angleName)
    for i, item in ipairs(items) do
        if item.name == angleName then
            return true
        end
    end
    return false
end

function SourceExists(items, id)
    for i, item in ipairs(items) do
        if item.id == id then
            return true
        end
    end
    return false
end

function sortByKey(key)
    return function(a, b)
        return a[key] < b[key]
    end
end

function AngleNames:AddNewAngle(angleName, orderNo)

    print("check")
    if AngleExists(AngleNames, angleName) then
        return -1
    end
    print("add")
    AngleNames[#AngleNames + 1] = {
        name = angleName,
        order = orderNo
    }

    print("new angle #", angleOrder, " ", angleName)

    return #AngleNames -- returns id
end

function AngleNames:Print()
    for i, v in ipairs(AngleNames) do
        print("#", i, "\t name:", v.name, "\t order:", v.order)
    end
end

function Angles:Print()
    for k, v in pairs(Angles) do
        print(k, "->", v)
    end
end

function SourceNames:Print()
    if SourceNames then
        for k, v in pairs(SourceNames) do
            print("#", i, "\t name:", v.name, "\t order:", v.order, "\t id:", v.id)
        end
    end
end

function SourceNames:AddNewSource(id, sourceName, orderNo)
    if SourceExists(SourceNames, id) then
        return -1
    end
    print("add source")
    SourceNames[#SourceNames + 1] = {sourceName, id, orderNo}
    print("new src #", srcOrder, " ", sourceName, " ", id)

    return #SourceNames -- returns id
end

function CollectTimelineAngles()

    print("STEP 1:Angles")

    -- Iterate through each video track
    for i = 1, numTracks do -- track loop

        local trackItems = curTimeline:GetItemListInTrack("video", i)

        -- iterate through each video item on the current track
        for i, item in ipairs(trackItems) do -- track item loop
            print(i, " ", item)
            -- check if the current clip is a multicam source
            local MediaPoolItem = item:GetMediaPoolItem()
            if MediaPoolItem == nil then
                print("missing pool item")
                goto continue
            end
            local typeCheck = MediaPoolItem:GetClipProperty("type")
            if typeCheck == "Multicam" then -- multicam check

                -- get name of the active angle of the current multicam clip
                local itemName = item:GetName()
                local angleName = itemName

                local addResult = AngleNames:AddNewAngle(angleName, angleOrder)

                if addResult > 0 then
                    angleOrder = angleOrder + 1
                else
                    print("angle exists:", angleName)
                end
                -- multicam check
            else
                print("clip is not multi;", typeCheck)
                local mpName = MediaPoolItem:GetName()
                print(mpName)
                local id = MediaPoolItem:GetMediaId()
                print(id)
                local addSrcResult = SourceNames:AddNewSource(id, mpName, srcOrder)

                if addSrcResult > 0 then
                    srcOrder = srcOrder + 1
                else
                    print("already exists")
                end

            end
            ::continue:: -- go to here if item does not have a media pool source
        end -- track item loop

    end -- track loop

    print("AngleNames:")
    AngleNames:Print()
    -- SourceNames:Print()

    table.sort(AngleNames, sortByKey("name"))

    print("AngleNames:")
    AngleNames:Print()

    if AngleNames then
        for i, item in ipairs(AngleNames) do
            local angleName = item.name
            local color = Colors[ColorIndex]
            Angles[angleName] = color
            print("INSERT ", angleName, " : ", color)
            if ColorIndex == #Colors then -- reset color index if at last color
                ColorIndex = 1
            else
                ColorIndex = ColorIndex + 1 -- increment color index for the next angle
            end

        end
    end

    --[[ 
    if SourceNames then
        for i, item in ipairs(SourceNames) do
            local id = item.id
            local srcName = item.name
            local color = Colors[ColorIndex]
            Sources[id] = color
            print("Insert src clr ", id, ": ", name, ": ", color)
            if ColorIndex == #Colors then -- reset color index if at last color
                ColorIndex = 1
            else
                ColorIndex = ColorIndex + 1 -- increment color index for the next angle
            end
        end
    end
   ]]
    print("Angles:")
    Angles:Print()
    return 1
end

function ColorTimelineItems()
    print("STEP 2: Clips")

    for i = 1, numTracks do -- track loop
        trackItems = curTimeline:GetItemListInTrack("video", i)

        -- iterate through each video item on the current track
        for i, item in ipairs(trackItems) do -- track item loop
            print(i, " ", item)
            -- check if the current clip is a multicam source
            local MediaPoolItem = item:GetMediaPoolItem()
            if MediaPoolItem == nil then
                print("missing pool item")
                goto continue
            end
            local typeCheck = MediaPoolItem:GetClipProperty("type")
            if typeCheck == "Multicam" then -- multicam check

                -- get name of the active angle of the current multicam clip
                local itemName = item:GetName()
                local angleName = itemName
                local colorName = Angles[angleName]


                local affectClip = colorName and colorName ~= "Don't Touch"
                print("->"..angleName.."->"..colorName.."->affect:"..tostring (affectClip))
                
                if affectClip then
                    item:ClearClipColor()
                    print("clear color "..angleName)
                end

                local paintClip = affectClip and colorName ~= "Clear Color"

                if colorName == nil then
                    print("color not found for ", angleName)
                    goto continue
                else
                    item:SetClipColor(colorName)
                    print("COLORSET ", item:GetStart(true), " ", angleName, " ", colorName)
                end

                -- multicam check
            else
                print("not multi")
                item:ClearClipColor()
                local id = MediaPoolItem.id
                local colorName = Sources[id]
                if colorName == nil then
                    print("color not found for ", angleName)
                    goto continue
                else
                    item:SetClipColor(colorName)
                    print("COLORSET SRC", item:GetStart(true), " ", id, " ", colorName)
                end

            end
            ::continue::

        end
    end

    return 1
end

ColorRGBS = {
    ["Clear Color"] = {
        R = 0,
        G = 0,
        B = 0,
        A = 0.5
    },
    ["Don't Touch"] = {
        R = 0.5,
        G = 0.5,
        B = 0.5,
        A = 0.5
    },
    ["Orange"] = {
        R = 255 / 255,
        G = 165 / 255,
        B = 0 / 255,
        A = 1
    }, -- Orange
    ["Lime"] = {
        R = 191 / 255,
        G = 255 / 255,
        B = 0 / 255,
        A = 1
    }, -- Lime
    ["Pink"] = {
        R = 248 / 255,
        G = 24 / 255,
        B = 148 / 255,
        A = 1
    }, -- Pink
    ["Purple"] = {
        R = 139 / 255,
        G = 25 / 255,
        B = 155 / 255,
        A = 1
    }, -- Purple
    ["Yellow"] = {
        R = 249 / 255,
        G = 232 / 255,
        B = 20 / 255,
        A = 1
    }, -- Yellow
    ["Green"] = {
        R = 11 / 255,
        G = 102 / 255,
        B = 35 / 255,
        A = 1
    },
    ["Violet"] = {
        R = 139 / 255,
        G = 25 / 255,
        B = 155 / 255,
        A = 1
    },
    ["Navy"] = {
        R = 0 / 255,
        G = 0 / 255,
        B = 128 / 255,
        A = 1
    },
    ["Brown"] = {
        R = 255 / 255,
        G = 102 / 255,
        B = 0 / 255,
        A = 1
    },
    ["Teal"] = {
        R = 50 / 255,
        G = 193 / 255,
        B = 186 / 255,
        A = 1
    },
    ["Chocolate"] = {
        R = 210 / 255,
        G = 105 / 255,
        B = 30 / 255,
        A = 1
    },
    ["Blue"] = {
        R = 0 / 255,
        G = 0 / 255,
        B = 255 / 255,
        A = 1
    },
    ["Tan"] = {
        R = 209 / 255,
        G = 178 / 255,
        B = 111 / 255,
        A = 1
    },
    ["Olive"] = {
        R = 112 / 255,
        G = 130 / 255,
        B = 56 / 255,
        A = 1
    },
    ["Beige"] = {
        R = 217 / 255,
        G = 194 / 255,
        B = 158 / 255,
        A = 1
    },
    ["Apricot"] = {
        R = 251 / 255,
        G = 190 / 255,
        B = 168 / 255,
        A = 1
    } -- Apricot
}

-- Available clip colors
Colors = {

    [1] = "Orange",
    [2] = "Lime",
    [3] = "Pink",
    [4] = "Purple",
    [5] = "Yellow",
    [6] = "Green",
    [7] = "Violet",
    [8] = "Navy",
    [9] = "Brown",
    [10] = "Teal",
    [11] = "Chocolate",
    [12] = "Blue",
    [13] = "Tan",
    [14] = "Olive",
    [15] = "Beige",
    [16] = "Apricot",
    [17] = "Don't Touch",
    [18] = "Clear Color"
}

-- local logoB64 = [[data:image/png;base64,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]]

local TITLE_CSS = [[
    QLabel
    {
        color: rgb(255, 255, 255);
        font-size: 30px;
        font-weight: bold;
    }
]]

local BUTTON_CSS = [[
    QPushButton
    {
        border: 1px solid #141414;
        max-height: 28px;
        border-radius: 14px;
        background-color: #2c473d;
        color: #ffffff;
        min-height: 28px;
        font-size: 13px;
        font-family: Readex Pro;
        font-weight: 600;
        letter-spacing: 1px;
    }
    QPushButton:hover
    {
        border: 2px solid rgb(50,50,50);
        background-color: #1b2e26;
    }
    QPushButton:pressed
    {
        border: 2px solid rgb(0,0,0);
        background-color: rgb(0,0,0);
    }
]]

local COMBO_CSS = [[
    color: white; 
    font-size: 14px; 
    font-weight: 500; 
    font-family: 'Arial';
]]

local currentItem
local lastItem

local win = disp:AddWindow({
    ID = "ExampleUI",
    WindowTitle = "Раскрасить по источникам",
    -- Geometry = {640+150, 480-200, 850, 900 }, -- Removed to showcase Auto Centering Windows
    WindowFlags = {
        Window = true,
        WindowStaysOnTopHint = true
    },

    Margin = 10,

    ui:VGroup{
        ID = "root",
        FixedSize = {700, 700}, -- Only Sets Size, Position Defaults to Center of Screen

        ui:TabBar{
            ID = 'TabBar1',
            CurrentIndex = 1,
            TabsClosable = false,
            Expanding = false,
            AutoHide = false,
            Movable = false,
            DrawBase = true,
            UsesScrollButtons = true,
            DocumentMode = true,
            ChangeCurrentOnDrag = false,
            Alignment = {
                AlignCenter = true
            },
            Weight = 0,
            StyleSheet = [[color: white; font-size: 20px; font-weight: 500; font-family: 'Arial';]]
        },
        ui:Label{
            ID = 'Label1',
            Text = 'Set Angle Colors',
            WordWrap = true,
            Alignment = AlignVCenter,
            Weight = 0,
            StyleSheet = TITLE_CSS
        },
        ui:Tree{
            ID = "ExampleTree",
            AlternatingRowColors = false,
            RootIsDecorated = false,
            HeaderHidden = false,
            ReadOnly = false,
            Weight = 1
        },

        ui:HGroup{
            Weight = 0,
            ui:Tree{
                ID = "CurrentTree",
                AlternatingRowColors = false,
                RootIsDecorated = false,
                HeaderHidden = false,
                ReadOnly = false,
                Weight = 2
            },
            ui:ComboBox{
                ID = "ComboColor",
                CurrentIndex = 0,
                Editable = false,
                Weight = 1,
                StyleSheet = COMBO_CSS
            }
        },
        ui:Button{
            ID = "Go",
            Text = "Set Timeline Colors",
            Weight = 1,
            StyleSheet = BUTTON_CSS
        }
    }
})

function PopulateAngles()

    local itms = win:GetItems()

    itms.ExampleTree:Clear()

    for i = 1, #AngleNames do
        local k = AngleNames[i].name
        local v = Angles[k]
        if (type(v) ~= "function") then
            local it = itms.ExampleTree:NewItem()
            it.Text[0] = k
            it.BackgroundColor[1] = ColorRGBS[v]
            it.Text[2] = v
            it.TextAlignment[2] = 'AlignVCenter'

            local idx = GetIndexByColor(v)
            if idx then
                it.Text[3] = tostring(idx)
            end

            itms.ExampleTree:AddTopLevelItem(it)

        end

    end

    --itms.ExampleTree.Select

end

function GetIndexByColor(color)

    for i = 1, #Colors do
        if Colors[i] == color then
            return i
        end
    end
    return nil
end

function PopulatePalette()

    local itms = win:GetItems()

    itms.ExampleTree:Clear()

    for i = 1, #Colors do
        local it = itms.ExampleTree:NewItem()
        it.Text[0] = "foo " .. Colors[i]
        it.BackgroundColor[1] = ColorRGBS[Colors[i]]
        it.Text[2] = Colors[i]
        it.TextAlignment[2] = 'AlignVCenter'
        it.Text[3] = tostring(i)

        itms.ExampleTree:AddTopLevelItem(it)
    end
end

-- This function is run when a user picks a different setting in the ComboBox control
function win.On.ComboColor.CurrentIndexChanged(ev)

    local itms = win:GetItems()
    print('[' .. itms.ComboColor.CurrentText .. ' ' .. itms.ComboColor.CurrentIndex ..
              '] Lets make an apple crisp dessert.')

    local i = itms.ComboColor.CurrentIndex + 1
    local curItem = itms.ExampleTree:CurrentItem()
    if curItem then
        local color = Colors[i]

        local angleName = curItem.Text[0]
        curItem.BackgroundColor[1] = ColorRGBS[color]
        curItem.Text[2] = color
        curItem.Text[3] = tostring(i)

        Angles[angleName] = color

        local st = itms.CurrentTree:TopLevelItem(0)
        if st then
            print("st")
            st.Text[0] = angleName
            st.BackgroundColor[1] = ColorRGBS[color]
        end

    end

end

function win.On.TabBar1.CurrentChanged(ev)
    local itms = win:GetItems()
    print("tab changed " .. itms.TabBar1.CurrentIndex)
    itms.ExampleTree:Clear()
    local idx = itms.TabBar1.CurrentIndex

    if idx == 0 then
        PopulateAngles()
    elseif idx == 2 then
        PopulatePalette()

    end

end

function win.On.Go.Clicked(ev)

    ColorTimelineItems()

end

function win.On.ExampleUI.Close(ev)
    disp:ExitLoop()
end

function win.On.ExampleTree.CurrentItemChanged(ev)

    local itms = win:GetItems()

    local curItem = itms.ExampleTree:CurrentItem()

    if curItem then
        print("curr" .. curItem)
        local idx = tonumber(curItem.Text[3])
        local comboIndex = idx - 1
        itms.ComboColor.CurrentIndex = comboIndex

    end
end

function win.On.ExampleTree.ItemClicked(ev)
    print()

end

function Start()
    local itms = win:GetItems()

    itms.TabBar1:AddTab('Tab1')
    itms.TabBar1:AddTab('Tab2')
    itms.TabBar1:AddTab('Tab3')

    print(itms.TabBar1.TabText[0])
    itms.TabBar1.TabText[0] = 'From Multicam Angles'
    itms.TabBar1.TabText[1] = 'From Source Media'
    itms.TabBar1.TabText[2] = 'Show Palette'

    itms.ExampleTree:SetHeaderLabels({"Angle", "Color", "Color", "Index"})
    itms.ExampleTree.ColumnWidth[0] = 475
    itms.ExampleTree.ColumnWidth[1] = 50
    itms.ExampleTree.ColumnWidth[2] = 100
    itms.ExampleTree.ColumnWidth[3] = 25

    itms.ComboColor:AddItems(Colors)

    itms.CurrentTree:SetHeaderLabels({"Selection", "Color"})

    itms.CurrentTree.ColumnWidth[0] = 300
    itms.CurrentTree.ColumnWidth[1] = 50

    local st = itms.CurrentTree:NewItem()
    st.Text[0] = "dick.."
    st.BackgroundColor[1] = ColorRGBS[Colors["Orange"]]
    itms.CurrentTree:AddTopLevelItem(st)

    local angleCollect = CollectTimelineAngles()

    for i = 1, #AngleNames do
        local it = itms.ExampleTree:NewItem()
        it.Text[0] = AngleNames[i].name
        it.BackgroundColor[1] = ColorRGBS[Colors[i]]
        it.Text[2] = Colors[i]
        it.TextAlignment[2] = 'AlignVCenter'
        it.Text[3] = tostring(i)

        itms.ExampleTree:AddTopLevelItem(it)
    end
end

Start()
win:RecalcLayout()
win:Show()
disp:RunLoop() -- Run until "ExitLoop"
win:Hide()

