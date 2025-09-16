DebugLevel = 1

-- Will be populated with Multicam angles
Angles = {}
Sources = {}

AngleNames = {}

SourceNames = {}

-- Constants and settings
GameMode = {
    ANGLES = 1,
    SOURCES = 2,
    PALETTE = 3
}

GroupMode = {
    NONE = 0,
    FPS = 1,
    FOLDERS = 2
}


Language = {
    EN = 1,
    RU = 2
}

-- Language user selected in interface. Affects label and table contents.
PluginUILanguage = Language.EN

-- Language selected in Davinci settings. Affects Color and  TimeLine constants. 
DVRSettingsLanguage = Language.EN


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

SourcesTableSettingsEN = {
    SourceColumnWidth = 200,
    UsageColumnWidth = 100,
    ColorColumnWidth = 100,
    ColorNameColumnWidth = 100,
    IndexColumnWidth = 100,
    MediaIdColumnWidth = 100,
    SourceColumnTitle = "Sources",
    UsageColumnTitle = "Usage",
    ColorColumnTitle = "Color#",
    ColorNameColumnTitle = "Color",
    IndexColumnTitle = "Index",
    MediaIdColumnTitle = "MediaID",
    SourceColumnIndex = 0,
    UsageColumnIndex = 1,
    ColorColumnIndex = 2,
    ColorNameColumnIndex = 3,
    IndexColumnIndex = 4,
    MediaIdColumnIndex = 5

}

AnglesTableSettingsEN = {
    AngleColumnWidth = 300,
    UsageColumnWidth = 100,
    ColorColumnWidth = 100,
    ColorNameColumnWidth = 100,
    IndexColumnWidth = 100,
    AngleColumnTitle = "Angles",
    UsageColumnTitle = "Usage",
    ColorColumnTitle = "Color#",
    ColorNameColumnTitle = "Color",
    IndexColumnTitle = "Index",
    AngleColumnIndex = 0,
    UsageColumnIndex = 1,
    ColorColumnIndex = 2,
    ColorNameColumnIndex = 3,
    IndexColumnIndex = 4
}

TabSettingsEN = {
    AnglesTabTitle = "From Multicam Angles",
    SourcesTabTitle = "From Source Media",
    PaletteTabTitle = "Show Palette",
    AnglesTabIndex = 0,
    SourcesTabIndex = 1,
    PaletteTabIndex = 2
}

HeaderSettingsEN = {
    HeaderText = "Set Angle Colors",
    AnglesHeaderText = "Set Angle Colors",
    AnglesDescription = "Choose color to mark timeline clips by source multicam angles",
    SourcesHeaderText = "Set Source Colors",
    SourcesDescription = "Choose color to mark timeline clips by source media pool clips",
    CurrentElementHeaderText = "Selection",
    CurrentColorHeaderText = "Color",
    CurrentElementHeaderWidth = 300,
    CurrentColorHeaderWidth = 50,
    CurrentElementColumnIndex = 0,
    CurrentColorColumnIndex = 1,
    CurrentElementUnselectedText = "..",
    ButtonText = "Set Timeline Colors",
    WindowTitle = "Timeline Colorizer",
    DefaultClipColor = "Orange",
    ResetButtonText = "Reset",
    Colors = 16,
    DontTouchColorIndex = 17,
    ClearColorIndex = 18
}

DVRSettingsEN ={
    MulticamClipType = "Multicam"
   
}

DVRSettingsRU = {
    MulticamClipType = "Многокамерная передача"


}

DVRSettings = DVRSettingsEN

CurrentGameMode = GameMode.ANGLES

CurrentGroupMode = GroupMode.NONE

SourcesTableSettings = SourcesTableSettingsEN
AnglesTableSettings = AnglesTableSettingsEN
TabSettings = TabSettingsEN
HeaderSettings = HeaderSettingsEN

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



-- Debug
function __FILE__()
    return debug.getinfo(2, 'S').source
end
function __LINE__()
    return debug.getinfo(2, 'l').currentline
end
function __FUNC__()
    return debug.getinfo(2, 'n').name
end

function printlinefilefunc(foo)
    print(foo .. " Line at " .. __LINE__() .. ", FILE at " .. __FILE__() .. ", in func: " .. __FUNC__())
end


-- Helper
function AngleExists(items, angleName)
    for i, item in ipairs(items) do
        if item.name == angleName then

            return i
        end
    end

    return -1
end

function SourceExists(items, id)

    for i, item in ipairs(items) do
        if item.id == id then

            return i
        end
    end

    return -1
end

function sortByKey(key)
    return function(a, b)
        return a[key] < b[key]
    end
end

function GetIndexByColor(color)

    for i = 1, #Colors do
        if Colors[i] == color then
            return i
        end
    end
    return nil
end

-- DVR Backend

-- Class Methods
function AngleNames:AddNewAngle(angleName, orderNo)

    local angleExists = AngleExists(AngleNames, angleName)
    if angleExists > 0 then
        local angleData = AngleNames[angleExists]
        local usage = angleData.usage
        usage = usage + 1
        AngleNames[angleExists].usage = usage
        print("update usage")

        return -1
    end
    print("add")
    AngleNames[#AngleNames + 1] = {
        name = angleName,
        order = orderNo,
        usage = 1
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

    local sourceExists = SourceExists(SourceNames, id)

    if sourceExists > 0 then

        local sourceData = SourceNames[sourceExists]
        local usage = sourceData.usage
        usage = usage + 1
        SourceNames[sourceExists].usage = usage
        print("update usage")

        return -1
    end
    print("add source")
    SourceNames[#SourceNames + 1] = {
        name = sourceName,
        id = id,
        order = orderNo,
        usage = 1
    }
    print("new src #", srcOrder, " ", sourceName, " ", id)

    return #SourceNames -- returns id
end


-- read sources and timelines
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
                    print("succ add src")
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
            if ColorIndex == HeaderSettings.Colors then -- reset color index if at last color
                ColorIndex = 1
            else
                ColorIndex = ColorIndex + 1 -- increment color index for the next angle
            end

        end
    end

    if SourceNames then
        for i, item in ipairs(SourceNames) do
            local id = item.id
            local srcName = item.name
            local color = Colors[ColorIndex]
            local u = item.usage
            if u then
                print("usage=" .. u)
            else
                print("usage null")
            end
            if id and srcName then
                print("source name = " .. srcName .. " id=" .. id)

            elseif srcName then
                print("source name = " .. srcName .. "id undef")
            else
                print("undef")
            end
            if id then
                Sources[id] = color
                print("Insert src clr ", id, ": ", name, ": ", color)
                if ColorIndex == HeaderSettings.Colors then -- reset color index if at last color
                    ColorIndex = 1
                else
                    ColorIndex = ColorIndex + 1 -- increment color index for the next angle
                end
            end

        end
    end

    print("Angles:")
    Angles:Print()

    return 1
end


-- apply clip color settings to current timeline
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

                local affectClip = colorName and colorName ~= Colors[HeaderSettings.DontTouchColorIndex] 
                print("->" .. angleName .. "->" .. colorName .. "->affect:" .. tostring(affectClip))

                if affectClip then
                    item:ClearClipColor()
                    print("clear color " .. angleName)
                end

                local paintClip = affectClip and colorName ~= Colors[HeaderSettings.ClearColorIndex] 

                if colorName == nil then
                    print("color not found for ", angleName)
                    goto continue
                elseif paintClip then
                    item:SetClipColor(colorName)
                    print("COLORSET ", item:GetStart(true), " ", angleName, " ", colorName)
                end

                -- multicam check
            else
                print("not multi")

                item:ClearClipColor()

                local clipName = MediaPoolItem:GetName()

                local id = MediaPoolItem:GetMediaId()
                if id then
                    print("id=" .. id .. " ClipName=" .. clipName .. " Type=" .. typeCheck)
                    local colorName = Sources[id]

                    if colorName then

                        local affectClip = colorName and colorName ~= Colors[HeaderSettings.DontTouchColorIndex] 
                        print("->" .. clipName .. "->" .. colorName .. "->affect:" .. tostring(affectClip))

                        if affectClip then
                            item:ClearClipColor()
                            print("clear color " .. clipName)
                        end

                        local paintClip = affectClip and colorName ~=  Colors[HeaderSettings.ClearColorIndex] 

                        if colorName == nil then
                            print("color not found for ", clipName)
                            goto continue
                        elseif paintClip then
                            item:SetClipColor(colorName)
                            print("COLORSET SRC", item:GetStart(true), " ", id, " ", colorName)
                        end
                    else
                        print("source not found for id=" .. id)
                    end
                end

            end
            ::continue::

        end
    end

    return 1
end


-- Frontend

-- local logoB64 = [[data:image/png;base64,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]]

local TITLE_CSS = [[
    QLabel
    {
        color: rgb(255, 255, 255);
        font-size: 20px;
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

-- UI Layout definition

local win = disp:AddWindow({
    ID = "ExampleUI",
    WindowTitle = HeaderSettings.WindowTitle,
    -- Geometry = {640+150, 480-200, 850, 900 }, -- Removed to showcase Auto Centering Windows
    WindowFlags = {
        Window = true,
        WindowStaysOnTopHint = true
    },

    Margin = 10,

    ui:VGroup{
        ID = "root",
        FixedSize = {1024, 768}, -- Only Sets Size, Position Defaults to Center of Screen

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
            ID = 'PromptLabel',
            Text = HeaderSettings.HeaderText,
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
            ID = "Reset",
            Text = HeaderSettings.ResetButtonText,
            Weight = 1,
            StyleSheet = BUTTON_CSS
        },
        ui:Button{
            ID = "Go",
            Text = HeaderSettings.ButtonText,
            Weight = 1,
            StyleSheet = BUTTON_CSS
        }
    }
})

-- Actions

-- fill sources table 
function PopulateSources()

    local itms = win:GetItems()
    itms.ExampleTree:Clear()
    itms.ExampleTree:SetHeaderLabels({SourcesTableSettings.SourceColumnTitle, SourcesTableSettings.UsageColumnTitle,
                                      SourcesTableSettings.ColorColumnTitle, SourcesTableSettings.ColorNameColumnTitle,
                                      SourcesTableSettings.IndexColumnTitle, SourcesTableSettings.MediaIdColumnTitle})
    itms.ExampleTree.ColumnWidth[SourcesTableSettings.SourceColumnIndex] = SourcesTableSettings.SourceColumnWidth
    itms.ExampleTree.ColumnWidth[SourcesTableSettings.UsageColumnIndex] = SourcesTableSettings.UsageColumnWidth
    itms.ExampleTree.ColumnWidth[SourcesTableSettings.ColorColumnIndex] = SourcesTableSettings.ColorColumnWidth
    itms.ExampleTree.ColumnWidth[SourcesTableSettings.ColorNameColumnIndex] = SourcesTableSettings.ColorNameColumnWidth
    itms.ExampleTree.ColumnWidth[SourcesTableSettings.IndexColumnIndex] = SourcesTableSettings.IndexColumnWidth
    itms.ExampleTree.ColumnWidth[SourcesTableSettings.MediaIdColumnIndex] = SourcesTableSettings.MediaIdColumnWidth

    for i = 1, #SourceNames do
        local k = SourceNames[i].name
        local id = SourceNames[i].id
        local u = SourceNames[i].usage
        local v = Sources[id]

        if (type(v) ~= "function") then
            local it = itms.ExampleTree:NewItem()
            it.Text[SourcesTableSettings.SourceColumnIndex] = k
            it.Text[SourcesTableSettings.UsageColumnIndex] = tostring(u)
            print("pop.." .. v)
            it.BackgroundColor[SourcesTableSettings.ColorColumnIndex] = ColorRGBS[v]
            it.Text[SourcesTableSettings.ColorNameColumnIndex] = v
            it.TextAlignment[SourcesTableSettings.ColorNameColumnIndex] = 'AlignVCenter'

            local idx = GetIndexByColor(v)
            if idx then
                it.Text[SourcesTableSettings.IndexColumnIndex] = tostring(idx)
            end

            it.Text[SourcesTableSettings.MediaIdColumnIndex] = id

            itms.ExampleTree:AddTopLevelItem(it)

        end

    end

end

-- fill angles table
function PopulateAngles()

    local itms = win:GetItems()

    itms.ExampleTree:Clear()

    itms.ExampleTree:SetHeaderLabels({AnglesTableSettings.AngleColumnTitle, AnglesTableSettings.UsageColumnTitle,
                                      AnglesTableSettings.ColorColumnTitle, AnglesTableSettings.ColorNameColumnTitle,
                                      AnglesTableSettings.IndexColumnTitle})
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.AngleColumnIndex] = AnglesTableSettings.AngleColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.UsageColumnIndex] = AnglesTableSettings.UsageColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.ColorColumnIndex] = AnglesTableSettings.ColorColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.ColorNameColumnIndex] = AnglesTableSettings.ColorNameColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.IndexColumnIndex] = AnglesTableSettings.IndexColumnWidth

    for i = 1, #AngleNames do
        local k = AngleNames[i].name
        local v = Angles[k]
        local u = AngleNames[i].usage
        if (type(v) ~= "function") then
            local it = itms.ExampleTree:NewItem()
            it.Text[AnglesTableSettings.AngleColumnIndex] = k
            it.Text[AnglesTableSettings.UsageColumnIndex] = tostring(u)
            it.BackgroundColor[AnglesTableSettings.ColorColumnIndex] = ColorRGBS[v]
            it.Text[AnglesTableSettings.ColorNameColumnIndex] = v
            it.TextAlignment[AnglesTableSettings.ColorNameColumnIndex] = 'AlignVCenter'

            local idx = GetIndexByColor(v)
            if idx then
                it.Text[AnglesTableSettings.IndexColumnIndex] = tostring(idx)
            end

            itms.ExampleTree:AddTopLevelItem(it)

        end

    end

    -- itms.ExampleTree.Select

end


-- fill palette table
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


-- display correct table on tab change
function RefreshTab()
    -- print(" Line at " .. __LINE__() .. ", FILE at " .. __FILE__() .. ", in func: " .. __FUNC__())

    local itms = win:GetItems()
    print("tab changed " .. itms.TabBar1.CurrentIndex)
    itms.ExampleTree:Clear()

    local idx = itms.TabBar1.CurrentIndex

    if idx == TabSettings.AnglesTabIndex then
        PopulateAngles()
        CurrentGameMode = GameMode.ANGLES
        itms.PromptLabel.Text = HeaderSettings.AnglesHeaderText .. " for " .. curTimeline:GetName()
    elseif idx == TabSettings.SourcesTabIndex then
        PopulateSources()
        CurrentGameMode = GameMode.SOURCES
        itms.PromptLabel.Text = HeaderSettings.SourcesHeaderText .. " for " .. curTimeline:GetName()
    elseif idx == TabSettings.PaletteTabIndex then
        PopulatePalette()
        CurrentGameMode = GameMode.PALETTE
        itms.PromptLabel.Text = HeaderSettings.PaletteHeaderText

    end
    -- print(" Line at " .. __LINE__() .. ", FILE at " .. __FILE__() .. ", in func: " .. __FUNC__())

end

-- apply changes to ui elements when user chooses new clip color 
function ChooseNewColor()
    local itms = win:GetItems()

    local i = itms.ComboColor.CurrentIndex + 1
    local curItem = itms.ExampleTree:CurrentItem()

    if curItem then
        local color = Colors[i]

        local angleName = HeaderSettings.CurrentElementUnselectedText

        if CurrentGameMode == GameMode.ANGLES then

            angleName = curItem.Text[AnglesTableSettings.AngleColumnIndex]
            curItem.BackgroundColor[AnglesTableSettings.ColorColumnIndex] = ColorRGBS[color]
            curItem.Text[AnglesTableSettings.ColorNameColumnIndex] = color
            curItem.Text[AnglesTableSettings.IndexColumnIndex] = tostring(i)
            Angles[angleName] = color

        elseif CurrentGameMode == GameMode.SOURCES then

            angleName = curItem.Text[SourcesTableSettings.SourceColumnIndex]
            curItem.BackgroundColor[SourcesTableSettings.ColorColumnIndex] = ColorRGBS[color]
            curItem.Text[SourcesTableSettings.ColorNameColumnIndex] = color
            curItem.Text[SourcesTableSettings.IndexColumnIndex] = tostring(i)
            local id = curItem.Text[SourcesTableSettings.MediaIdColumnIndex]
            Sources[id] = color
        end

        local st = itms.CurrentTree:TopLevelItem(0)
        if st then
            print("st")
            st.Text[HeaderSettings.CurrentElementColumnIndex] = angleName
            st.BackgroundColor[HeaderSettings.CurrentColorColumnIndex] = ColorRGBS[color]
        end

    end
end

-- apply changes to ui elements when user chooses new table row (angle or source clip)

function ChooseNewTableRow()

    local itms = win:GetItems()

    local curItem = itms.ExampleTree:CurrentItem()

    if curItem then
        print("curr" .. curItem)

        local idx = -1
        if CurrentGameMode == GameMode.ANGLES then
            idx = tonumber(curItem.Text[AnglesTableSettings.IndexColumnIndex])

        elseif CurrentGameMode == GameMode.SOURCES then
            idx = tonumber(curItem.Text[SourcesTableSettings.IndexColumnIndex])

        elseif CurrentGameMode == GameMode.PALETTE then
            idx = tonumber(curItem.Text[4])

        end

        local comboIndex = idx - 1
        itms.ComboColor.CurrentIndex = comboIndex

    end
end

-- re-read timeline data and set default colors
function Reset()

    for k, _ in pairs(Angles) do
        if type(Angles[k]) ~= "function" then
            Angles[k] = nil
        end
    end
    for k, _ in pairs(Sources) do
        if type(Sources[k]) ~= "function" then
            Sources[k] = nil
        end
    end
    for k, _ in pairs(AngleNames) do
        if type(AngleNames[k]) ~= "function" then
            AngleNames[k] = nil
        end
    end
    for k, _ in pairs(SourceNames) do
        if type(SourceNames[k]) ~= "function" then
            SourceNames[k] = nil
        end
    end

    ColorIndex=1

    curTimeline = curProj:GetCurrentTimeline()
    numTracks = curTimeline:GetTrackCount("video")
    local angleCollect = CollectTimelineAngles()
    RefreshTab()

end

-- initialize ui components
function Start()

    local itms = win:GetItems()

    itms.TabBar1:AddTab('Tab1')
    itms.TabBar1:AddTab('Tab2')
    itms.TabBar1:AddTab('Tab3')

    itms.TabBar1.TabText[TabSettings.AnglesTabIndex] = TabSettings.AnglesTabTitle
    itms.TabBar1.TabText[TabSettings.SourcesTabIndex] = TabSettings.SourcesTabTitle
    itms.TabBar1.TabText[TabSettings.PaletteTabIndex] = TabSettings.PaletteTabTitle

    print("Setting AnglesTable")

    itms.ExampleTree:SetHeaderLabels({AnglesTableSettings.AngleColumnTitle, AnglesTableSettings.ColorColumnTitle,
                                      AnglesTableSettings.ColorNameColumnTitle, AnglesTableSettings.IndexColumnTitle})

    print("SettingColumnWidth")
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.AngleColumnIndex] = AnglesTableSettings.AngleColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.ColorColumnIndex] = AnglesTableSettings.ColorColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.ColorNameColumnIndex] = AnglesTableSettings.ColorNameColumnWidth
    itms.ExampleTree.ColumnWidth[AnglesTableSettings.IndexColumnIndex] = AnglesTableSettings.IndexColumnWidth

    print("SettingCombo")
    itms.ComboColor:AddItems(Colors)

    print("Setting CurrentSelection")
    itms.CurrentTree:SetHeaderLabels({HeaderSettings.CurrentElementHeaderText, HeaderSettings.CurrentColorHeaderText})

    itms.CurrentTree.ColumnWidth[HeaderSettings.CurrentElementColumnIndex] = HeaderSettings.CurrentElementHeaderWidth
    itms.CurrentTree.ColumnWidth[HeaderSettings.CurrentColorColumnIndex] = HeaderSettings.CurrentColorHeaderWidth

    local st = itms.CurrentTree:NewItem()

    st.Text[HeaderSettings.CurrentElementColumnIndex] = HeaderSettings.CurrentElementUnselectedText
    st.BackgroundColor[HeaderSettings.CurrentColorColumnIndex] = ColorRGBS[Colors[HeaderSettings.DefaultClipColor]]
    itms.CurrentTree:AddTopLevelItem(st)

    print("Init backend")
    local angleCollect = CollectTimelineAngles()

    -- for i = 1, #AngleNames do
    --     local it = itms.ExampleTree:NewItem()
    --     it.Text[0] = AngleNames[i].name
    --     it.BackgroundColor[1] = ColorRGBS[Colors[i]]
    --     it.Text[2] = Colors[i]
    --     it.TextAlignment[2] = 'AlignVCenter'
    --     it.Text[3] = tostring(i)

    --     itms.ExampleTree:AddTopLevelItem(it)
    -- end

end

-- Event handlers

-- This function is run when a user picks a different setting in the ComboBox control
function win.On.ComboColor.CurrentIndexChanged(ev)

    ChooseNewColor()

end

function win.On.TabBar1.CurrentChanged(ev)

    RefreshTab()

end

function win.On.Go.Clicked(ev)

    ColorTimelineItems()

end

function win.On.Reset.Clicked(ev)
    Reset()
end

function win.On.ExampleUI.Close(ev)
    disp:ExitLoop()
end

function win.On.ExampleTree.CurrentItemChanged(ev)

    ChooseNewTableRow()

end

function win.On.ExampleTree.ItemClicked(ev)
    print()

end


Start()
win:RecalcLayout()
win:Show()
disp:RunLoop() -- Run until "ExitLoop"
win:Hide()

