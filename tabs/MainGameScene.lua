
-- Main Game Scene
-- Created by Amdre Hazim 
-- created on Dec 2016
-- Created for the levels in the worlds
-- Once a level and world is selceted this tab will select the settings for the level. 


MainGameScene = class()

score = 0
timeLimit = 180
local anologClocks = {}
local digitalClocks = {}
local numberToTime = {}
local digitalClockSelectedNumber
local digitalClockSelectedNumber2
local digitalClockSelectedNumber3
local digitalClockSelectedNumber4
local digitalClockSelectedNumber5
local anologClockSelectedNumber
local timePicked
local anologClockSelectedSpriteObject
local digitalClockSelectedSpriteObject
local digitalClockSelectedSpriteObjectTwo
local digitalClockSelectedSpriteObjectThree
local digitalClockSelectedSpriteObjectFour
local digitalClockSelectedSpriteObjectFive
local digitalClockSelectedSpriteObjectAnswer
local scoreLimit
local levelOne
local digitalTimeOne 
local digitalTimeTwo
local digitalTimeThree
local bossCharacter
local health
local healthBar
local digitalTimes = {}

function sleep(n)
    local time = os.clock()
    while (os.clock()-time < n) do
        
    end
end


    
    table.insert(numberToTime, "1:05")
    table.insert(numberToTime, "1:10")
    table.insert(numberToTime, "1:15")
    table.insert(numberToTime, "1:20")
    table.insert(numberToTime, "1:25")
    table.insert(numberToTime, "1:30")
    table.insert(numberToTime, "1:35")
    table.insert(numberToTime, "1:40")
    table.insert(numberToTime, "1:45")
    table.insert(numberToTime, "1:50")
    table.insert(numberToTime, "1:55")
    table.insert(numberToTime, "2:00")
    table.insert(numberToTime, "2:05")
    table.insert(numberToTime, "2:10")
    table.insert(numberToTime, "2:15")
    table.insert(numberToTime, "2:20")
    table.insert(numberToTime, "2:25")
    table.insert(numberToTime, "2:30")
    table.insert(numberToTime, "2:35")
    table.insert(numberToTime, "2:40")
    table.insert(numberToTime, "2:45")
    table.insert(numberToTime, "2:50")
    table.insert(numberToTime, "2:55")
    table.insert(numberToTime, "3:00")
    table.insert(numberToTime, "3:05")
    table.insert(numberToTime, "3:10")
    table.insert(numberToTime, "3:15")
    table.insert(numberToTime, "3:20")
    table.insert(numberToTime, "3:25")
    table.insert(numberToTime, "3:30")
    table.insert(numberToTime, "3:35")
    table.insert(numberToTime, "3:40")
    table.insert(numberToTime, "3:45")
    table.insert(numberToTime, "3:50")
    table.insert(numberToTime, "3:55")
    table.insert(numberToTime, "4:00")
    table.insert(numberToTime, "4:05")
    table.insert(numberToTime, "4:10")
    table.insert(numberToTime, "4:15")
    table.insert(numberToTime, "4:20")
    table.insert(numberToTime, "4:25")
    table.insert(numberToTime, "4:30")
    table.insert(numberToTime, "4:35")
    table.insert(numberToTime, "4:40")
    table.insert(numberToTime, "4:45")
    table.insert(numberToTime, "4:50")
    table.insert(numberToTime, "4:55")
    table.insert(numberToTime, "5:00")
    table.insert(numberToTime, "5:05")
    table.insert(numberToTime, "5:10")
    table.insert(numberToTime, "5:15")
    table.insert(numberToTime, "5:20")
    table.insert(numberToTime, "5:25")
    table.insert(numberToTime, "5:30")
    table.insert(numberToTime, "5:35")
    table.insert(numberToTime, "5:40")
    table.insert(numberToTime, "5:45")
    table.insert(numberToTime, "5:50")
    table.insert(numberToTime, "5:55")
    table.insert(numberToTime, "6:00")
    table.insert(numberToTime, "6:05")
    table.insert(numberToTime, "6:10")
    table.insert(numberToTime, "6:15")
    table.insert(numberToTime, "6:20")
    table.insert(numberToTime, "6:25")
    table.insert(numberToTime, "6:30")
    table.insert(numberToTime, "6:35")
    table.insert(numberToTime, "6:40")
    table.insert(numberToTime, "6:45")
    table.insert(numberToTime, "6:50")
    table.insert(numberToTime, "6:55")
    table.insert(numberToTime, "7:00")
    table.insert(numberToTime, "7:05")
    table.insert(numberToTime, "7:10")
    table.insert(numberToTime, "7:15")
    table.insert(numberToTime, "7:20")
    table.insert(numberToTime, "7:25")
    table.insert(numberToTime, "7:30")
    table.insert(numberToTime, "7:35")
    table.insert(numberToTime, "7:40")
    table.insert(numberToTime, "7:45")
    table.insert(numberToTime, "7:50")
    table.insert(numberToTime, "7:55")
    table.insert(numberToTime, "8:00")
    table.insert(numberToTime, "8:05")
    table.insert(numberToTime, "8:10")
    table.insert(numberToTime, "8:15")
    table.insert(numberToTime, "8:20")
    table.insert(numberToTime, "8:25")
    table.insert(numberToTime, "8:30")
    table.insert(numberToTime, "8:35")
    table.insert(numberToTime, "8:40")
    table.insert(numberToTime, "8:45")
    table.insert(numberToTime, "8:50")
    table.insert(numberToTime, "8:55")
    table.insert(numberToTime, "9:00")
    table.insert(numberToTime, "9:05")
    table.insert(numberToTime, "9:10")
    table.insert(numberToTime, "9:15")
    table.insert(numberToTime, "9:20")
    table.insert(numberToTime, "9:25")
    table.insert(numberToTime, "9:30")
    table.insert(numberToTime, "9:35")
    table.insert(numberToTime, "9:40")
    table.insert(numberToTime, "9:45")
    table.insert(numberToTime, "9:50")
    table.insert(numberToTime, "9:55")
    table.insert(numberToTime, "10:00")
    table.insert(numberToTime, "10:05")
    table.insert(numberToTime, "10:10")
    table.insert(numberToTime, "10:15")
    table.insert(numberToTime, "10:20")
    table.insert(numberToTime, "10:25")
    table.insert(numberToTime, "10:30")
    table.insert(numberToTime, "10:35")
    table.insert(numberToTime, "10:40")
    table.insert(numberToTime, "10:45")
    table.insert(numberToTime, "10:50")
    table.insert(numberToTime, "10:55")
    table.insert(numberToTime, "11:00")
    table.insert(numberToTime, "11:05")
    table.insert(numberToTime, "11:10")
    table.insert(numberToTime, "11:15")
    table.insert(numberToTime, "11:20")
    table.insert(numberToTime, "11:25")
    table.insert(numberToTime, "11:30")
    table.insert(numberToTime, "11:35")
    table.insert(numberToTime, "11:40")
    table.insert(numberToTime, "11:45")
    table.insert(numberToTime, "11:50")
    table.insert(numberToTime, "11:55")
    table.insert(numberToTime, "12:00")
    table.insert(numberToTime, "12:05")
    table.insert(numberToTime, "12:10")
    table.insert(numberToTime, "12:15")
    table.insert(numberToTime, "12:20")
    table.insert(numberToTime, "12:25")
    table.insert(numberToTime, "12:30")
    table.insert(numberToTime, "12:35")
    table.insert(numberToTime, "12:40")
    table.insert(numberToTime, "12:45")
    table.insert(numberToTime, "12:50")
    table.insert(numberToTime, "12:55")
    
    
     sprite("Dropbox:digital-6-10")
    
    anologClocks["1:00"] = "Dropbox:anologe-1-00"
    anologClocks["1:05"] = "Dropbox:anologe-1-05"
    anologClocks["1:10"] = "Dropbox:anologe-1-10"
    anologClocks["1:15"] = "Dropbox:anologe-1-15"
    anologClocks["1:20"] = "Dropbox:anologe-1-20"
    anologClocks["1:25"] = "Dropbox:anologe-1-25"
    anologClocks["1:30"] = "Dropbox:anologe-1-30"
    anologClocks["1:35"] = "Dropbox:anologe-1-35"
    anologClocks["1:40"] = "Dropbox:anologe-1-40"
    anologClocks["1:45"] = "Dropbox:anologe-1-45"
    anologClocks["1:50"] = "Dropbox:anologe-1-50"
    anologClocks["1:55"] = "Dropbox:anologe-1-55"
    anologClocks["2:00"] = "Dropbox:anologe-2-00"
    anologClocks["2:05"] = "Dropbox:anologe-2-05"
    anologClocks["2:10"] = "Dropbox:anologe-2-10"
    anologClocks["2:15"] = "Dropbox:anologe-2-15"
    anologClocks["2:20"] = "Dropbox:anologe-2-20"
    anologClocks["2:25"] = "Dropbox:anologe-2-25"
    anologClocks["2:30"] = "Dropbox:anologe-2-30"
    anologClocks["2:35"] = "Dropbox:anologe-2-35"
    anologClocks["2:40"] = "Dropbox:anologe-2-40"
    anologClocks["2:45"] = "Dropbox:anologe-2-45"
    anologClocks["2:50"] = "Dropbox:anologe-2-50"
    anologClocks["2:55"] = "Dropbox:anologe-2-55"
    anologClocks["3:00"] = "Dropbox:anologe-3-00"
    anologClocks["3:10"] = "Dropbox:anologe-3-10"
    anologClocks["3:15"] = "Dropbox:anologe-3-15"
    anologClocks["3:20"] = "Dropbox:anologe-3-20"
    anologClocks["3:25"] = "Dropbox:anologe-3-25"
    anologClocks["3:30"] = "Dropbox:anologe-3-30"
    anologClocks["3:35"] = "Dropbox:anologe-3-35"
    anologClocks["3:40"] = "Dropbox:anologe-3-40"
    anologClocks["3:45"] = "Dropbox:anologe-3-45"
    anologClocks["3:50"] = "Dropbox:anologe-3-50"
    anologClocks["3:55"] = "Dropbox:anologe-3-55"
    anologClocks["4:00"] = "Dropbox:anologe-4-00"
    anologClocks["4:10"] = "Dropbox:anologe-4-10"
    anologClocks["4:15"] = "Dropbox:anologe-4-15"
    anologClocks["4:20"] = "Dropbox:anologe-4-20"
    anologClocks["4:25"] = "Dropbox:anologe-4-25"
    anologClocks["4:30"] = "Dropbox:anologe-4-30"
    anologClocks["4:35"] = "Dropbox:anologe-4-35"
    anologClocks["4:40"] = "Dropbox:anologe-4-40"
    anologClocks["4:45"] = "Dropbox:anologe-4-45"
    anologClocks["4:50"] = "Dropbox:anologe-4-50"
    anologClocks["4:55"] = "Dropbox:anologe-4-55"
    anologClocks["5:00"] = "Dropbox:anologe-5-00"
    anologClocks["5:10"] = "Dropbox:anologe-5-10"
    anologClocks["5:15"] = "Dropbox:anologe-5-15"
    anologClocks["5:20"] = "Dropbox:anologe-5-20"
    anologClocks["5:25"] = "Dropbox:anologe-5-25"
    anologClocks["5:30"] = "Dropbox:anologe-5-30"
    anologClocks["5:35"] = "Dropbox:anologe-5-35"
    anologClocks["5:40"] = "Dropbox:anologe-5-40"
    anologClocks["5:45"] = "Dropbox:anologe-5-45"
    anologClocks["5:50"] = "Dropbox:anologe-5-50"
    anologClocks["5:55"] = "Dropbox:anologe-5-55"
    anologClocks["6:00"] = "Dropbox:anologe-6-00"
    anologClocks["6:05"] = "Dropbox:anologe-6-05"
    anologClocks["6:10"] = "Dropbox:anologe-6-10"
    anologClocks["6:15"] = "Dropbox:anologe-6-15"
    anologClocks["6:20"] = "Dropbox:anologe-6-20"
    anologClocks["6:25"] = "Dropbox:anologe-6-25"
    anologClocks["6:30"] = "Dropbox:anologe-6-30"
    anologClocks["6:35"] = "Dropbox:anologe-6-35"
    anologClocks["6:40"] = "Dropbox:anologe-6-40"
    anologClocks["6:45"] = "Dropbox:anologe-6-45"
    anologClocks["6:50"] = "Dropbox:anologe-6-50"
    anologClocks["6:55"] = "Dropbox:anologe-6-55"
    anologClocks["7:00"] = "Dropbox:anologe-7-00"
    anologClocks["7:05"] = "Dropbox:anologe-7-05"
    anologClocks["7:10"] = "Dropbox:anologe-7-10"
    anologClocks["7:15"] = "Dropbox:anologe-7-15"
    anologClocks["7:20"] = "Dropbox:anologe-7-20"
    anologClocks["7:25"] = "Dropbox:anologe-7-25"
    anologClocks["7:30"] = "Dropbox:anologe-7-30"
    anologClocks["7:35"] = "Dropbox:anologe-7-35"
    anologClocks["7:40"] = "Dropbox:anologe-7-40"
    anologClocks["7:45"] = "Dropbox:anologe-7-45"
    anologClocks["7:50"] = "Dropbox:anologe-7-50"
    anologClocks["7:55"] = "Dropbox:anologe-7-55"
    anologClocks["8:00"] = "Dropbox:anologe-8-00"
    anologClocks["8:05"] = "Dropbox:anologe-8-05"
    anologClocks["8:10"] = "Dropbox:anologe-8-10"
    anologClocks["8:15"] = "Dropbox:anologe-8-15"
    anologClocks["8:20"] = "Dropbox:anologe-8-20"
    anologClocks["8:25"] = "Dropbox:anologe-8-25"
    anologClocks["8:30"] = "Dropbox:anologe-8-30"
    anologClocks["8:35"] = "Dropbox:anologe-8-35"
    anologClocks["8:40"] = "Dropbox:anologe-8-40"
    anologClocks["8:45"] = "Dropbox:anologe-8-45"
    anologClocks["8:50"] = "Dropbox:anologe-8-50"
    anologClocks["8:55"] = "Dropbox:anologe-8-55"
    anologClocks["8:00"] = "Dropbox:anologe-9-00"
    anologClocks["9:05"] = "Dropbox:anologe-9-05"
    anologClocks["9:10"] = "Dropbox:anologe-9-10"
    anologClocks["9:15"] = "Dropbox:anologe-9-15"
    anologClocks["9:20"] = "Dropbox:anologe-9-20"
    anologClocks["9:25"] = "Dropbox:anologe-9-25"
    anologClocks["9:30"] = "Dropbox:anologe-9-30"
    anologClocks["9:35"] = "Dropbox:anologe-9-35"
    anologClocks["9:40"] = "Dropbox:anologe-9-40"
    anologClocks["9:45"] = "Dropbox:anologe-9-45"
    anologClocks["9:50"] = "Dropbox:anologe-9-50"
    anologClocks["9:55"] = "Dropbox:anologe-9-55"
    anologClocks["10:00"] = "Dropbox:anologe-10-00"
    anologClocks["10:05"] = "Dropbox:anologe-10-05"
    anologClocks["10:10"] = "Dropbox:anologe-10-10"
    anologClocks["10:15"] = "Dropbox:anologe-10-15"
    anologClocks["10:20"] = "Dropbox:anologe-10-20"
    anologClocks["10:25"] = "Dropbox:anologe-10-25"
    anologClocks["10:30"] = "Dropbox:anologe-10-30"
    anologClocks["10:35"] = "Dropbox:anologe-10-35"
    anologClocks["10:40"] = "Dropbox:anologe-10-40"
    anologClocks["10:45"] = "Dropbox:anologe-10-45"
    anologClocks["10:50"] = "Dropbox:anologe-10-50"
    anologClocks["10:55"] = "Dropbox:anologe-10-55"
    anologClocks["11:00"] = "Dropbox:anologe-11-00"
    anologClocks["11:05"] = "Dropbox:anologe-11-05"
    anologClocks["11:10"] = "Dropbox:anologe-11-10"
    anologClocks["11:15"] = "Dropbox:anologe-11-15"
    anologClocks["11:20"] = "Dropbox:anologe-11-20"
    anologClocks["11:25"] = "Dropbox:anologe-11-25"
    anologClocks["11:30"] = "Dropbox:anologe-11-30"
    anologClocks["11:35"] = "Dropbox:anologe-11-35"
    anologClocks["11:40"] = "Dropbox:anologe-11-40"
    anologClocks["11:45"] = "Dropbox:anologe-11-45"
    anologClocks["11:50"] = "Dropbox:anologe-11-50"
    anologClocks["11:55"] = "Dropbox:anologe-11-55"
    anologClocks["12:00"] = "Dropbox:anologe-12-00"
    anologClocks["12:05"] = "Dropbox:anologe-12-05"
    anologClocks["12:10"] = "Dropbox:anologe-12-10"
    anologClocks["12:15"] = "Dropbox:anologe-12-15"
    anologClocks["12:20"] = "Dropbox:anologe-12-20"
    anologClocks["12:25"] = "Dropbox:anologe-12-25"
    anologClocks["12:30"] = "Dropbox:anologe-12-30"
    anologClocks["12:35"] = "Dropbox:anologe-12-35"
    anologClocks["12:40"] = "Dropbox:anologe-12-40"
    anologClocks["12:45"] = "Dropbox:anologe-12-45"
    anologClocks["12:50"] = "Dropbox:anologe-12-50"
    anologClocks["12:55"] = "Dropbox:anologe-12-55"
    
    
    
    digitalClocks["1:00"] = "Dropbox:digital-1-00"
    digitalClocks["1:05"] = "Dropbox:digital-1-05"
    digitalClocks["1:10"] = "Dropbox:digital-1-10"
    digitalClocks["1:15"] = "Dropbox:digital-1-15"
    digitalClocks["1:20"] = "Dropbox:digital-1-20"
    digitalClocks["1:25"] = "Dropbox:digital-1-25"
    digitalClocks["1:30"] = "Dropbox:digital-1-30"
    digitalClocks["1:35"] = "Dropbox:digital-1-35"
    digitalClocks["1:40"] = "Dropbox:digital-1-40"
    digitalClocks["1:45"] = "Dropbox:digital-1-45"
    digitalClocks["1:50"] = "Dropbox:digital-1-50"
    digitalClocks["1:55"] = "Dropbox:digital-1-55"
    digitalClocks["2:00"] = "Dropbox:digital-2-00"
    digitalClocks["2:05"] = "Dropbox:digital-2-05"
    digitalClocks["2:10"] = "Dropbox:digital-2-10"
    digitalClocks["2:15"] = "Dropbox:digital-2-15"
    digitalClocks["2:20"] = "Dropbox:digital-2-20"
    digitalClocks["2:25"] = "Dropbox:digital-2-25"
    digitalClocks["2:30"] = "Dropbox:digital-2-30"
    digitalClocks["2:35"] = "Dropbox:digital-2-35"
    digitalClocks["2:40"] = "Dropbox:digital-2-40"
    digitalClocks["2:45"] = "Dropbox:digital-2-45"
    digitalClocks["2:50"] = "Dropbox:digital-2-50"
    digitalClocks["2:55"] = "Dropbox:digital-2-55"
    digitalClocks["3:00"] = "Dropbox:digital-3-00"
    digitalClocks["3:10"] = "Dropbox:digital-3-10"
    digitalClocks["3:15"] = "Dropbox:digital-3-15"
    digitalClocks["3:20"] = "Dropbox:digital-3-20"
    digitalClocks["3:25"] = "Dropbox:digital-3-25"
    digitalClocks["3:30"] = "Dropbox:digital-3-30"
    digitalClocks["3:35"] = "Dropbox:digital-3-35"
    digitalClocks["3:40"] = "Dropbox:digital-3-40"
    digitalClocks["3:45"] = "Dropbox:digital-3-45"
    digitalClocks["3:50"] = "Dropbox:digital-3-50"
    digitalClocks["3:55"] = "Dropbox:digital-3-55"
    digitalClocks["4:00"] = "Dropbox:digital-4-00"
    digitalClocks["4:10"] = "Dropbox:digital-4-10"
    digitalClocks["4:15"] = "Dropbox:digital-4-15"
    digitalClocks["4:20"] = "Dropbox:digital-4-20"
    digitalClocks["4:25"] = "Dropbox:digital-4-25"
    digitalClocks["4:30"] = "Dropbox:digital-4-30"
    digitalClocks["4:35"] = "Dropbox:digital-4-35"
    digitalClocks["4:40"] = "Dropbox:digital-4-40"
    digitalClocks["4:45"] = "Dropbox:digital-4-45"
    digitalClocks["4:50"] = "Dropbox:digital-4-50"
    digitalClocks["4:55"] = "Dropbox:digital-4-55"
    digitalClocks["5:00"] = "Dropbox:digital-5-00"
    digitalClocks["5:10"] = "Dropbox:digital-5-10"
    digitalClocks["5:15"] = "Dropbox:digital-5-15"
    digitalClocks["5:20"] = "Dropbox:digital-5-20"
    digitalClocks["5:25"] = "Dropbox:digital-5-25"
    digitalClocks["5:30"] = "Dropbox:digital-5-30"
    digitalClocks["5:35"] = "Dropbox:digital-5-35"
    digitalClocks["5:40"] = "Dropbox:digital-5-40"
    digitalClocks["5:45"] = "Dropbox:digital-5-45"
    digitalClocks["5:50"] = "Dropbox:digital-5-50"
    digitalClocks["5:55"] = "Dropbox:digital-5-55"
    digitalClocks["6:00"] = "Dropbox:digital-6-00"
    digitalClocks["6:05"] = "Dropbox:digital-6-05"
    digitalClocks["6:10"] = "Dropbox:digital-6-10"
    digitalClocks["6:15"] = "Dropbox:digital-6-15"
    digitalClocks["6:20"] = "Dropbox:digital-6-20"
    digitalClocks["6:25"] = "Dropbox:digital-6-25"
    digitalClocks["6:30"] = "Dropbox:digital-6-30"
    digitalClocks["6:35"] = "Dropbox:digital-6-35"
    digitalClocks["6:40"] = "Dropbox:digital-6-40"
    digitalClocks["6:45"] = "Dropbox:digital-6-45"
    digitalClocks["6:50"] = "Dropbox:digital-6-50"
    digitalClocks["6:55"] = "Dropbox:digital-6-55"
    digitalClocks["7:00"] = "Dropbox:digital-7-00"
    digitalClocks["7:05"] = "Dropbox:digital-7-05"
    digitalClocks["7:10"] = "Dropbox:digital-7-10"
    digitalClocks["7:15"] = "Dropbox:digital-7-15"
    digitalClocks["7:20"] = "Dropbox:digital-7-20"
    digitalClocks["7:25"] = "Dropbox:digital-7-25"
    digitalClocks["7:30"] = "Dropbox:digital-7-30"
    digitalClocks["7:35"] = "Dropbox:digital-7-35"
    digitalClocks["7:40"] = "Dropbox:digital-7-40"
    digitalClocks["7:45"] = "Dropbox:digital-7-45"
    digitalClocks["7:50"] = "Dropbox:digital-7-50"
    digitalClocks["7:55"] = "Dropbox:digital-7-55"
    digitalClocks["8:00"] = "Dropbox:digital-8-00"
    digitalClocks["8:05"] = "Dropbox:digital-8-05"
    digitalClocks["8:10"] = "Dropbox:digital-8-10"
    digitalClocks["8:15"] = "Dropbox:digital-8-15"
    digitalClocks["8:20"] = "Dropbox:digital-8-20"
    digitalClocks["8:25"] = "Dropbox:digital-8-25"
    digitalClocks["8:30"] = "Dropbox:digital-8-30"
    digitalClocks["8:35"] = "Dropbox:digital-8-35"
    digitalClocks["8:40"] = "Dropbox:digital-8-40"
    digitalClocks["8:45"] = "Dropbox:digital-8-45"
    digitalClocks["8:50"] = "Dropbox:digital-8-50"
    digitalClocks["8:55"] = "Dropbox:digital-8-55"
    digitalClocks["8:00"] = "Dropbox:digital-9-00"
    digitalClocks["9:05"] = "Dropbox:digital-9-05"
    digitalClocks["9:10"] = "Dropbox:digital-9-10"
    digitalClocks["9:15"] = "Dropbox:digital-9-15"
    digitalClocks["9:20"] = "Dropbox:digital-9-20"
    digitalClocks["9:25"] = "Dropbox:digital-9-25"
    digitalClocks["9:30"] = "Dropbox:digital-9-30"
    digitalClocks["9:35"] = "Dropbox:digital-9-35"
    digitalClocks["9:40"] = "Dropbox:digital-9-40"
    digitalClocks["9:45"] = "Dropbox:digital-9-45"
    digitalClocks["9:50"] = "Dropbox:digital-9-50"
    digitalClocks["9:55"] = "Dropbox:digital-9-55"
    digitalClocks["10:00"] = "Dropbox:digital-10-00"
    digitalClocks["10:05"] = "Dropbox:digital-10-05"
    digitalClocks["10:10"] = "Dropbox:digital-10-10"
    digitalClocks["10:15"] = "Dropbox:digital-10-15"
    digitalClocks["10:20"] = "Dropbox:digital-10-20"
    digitalClocks["10:25"] = "Dropbox:digital-10-25"
    digitalClocks["10:30"] = "Dropbox:digital-10-30"
    digitalClocks["10:35"] = "Dropbox:digital-10-35"
    digitalClocks["10:40"] = "Dropbox:digital-10-40"
    digitalClocks["10:45"] = "Dropbox:digital-10-45"
    digitalClocks["10:50"] = "Dropbox:digital-10-50"
    digitalClocks["10:55"] = "Dropbox:digital-10-55"
    digitalClocks["11:00"] = "Dropbox:digital-11-00"
    digitalClocks["11:05"] = "Dropbox:digital-11-05"
    digitalClocks["11:10"] = "Dropbox:digital-11-10"
    digitalClocks["11:15"] = "Dropbox:digital-11-15"
    digitalClocks["11:20"] = "Dropbox:digital-11-20"
    digitalClocks["11:25"] = "Dropbox:digital-11-25"
    digitalClocks["11:30"] = "Dropbox:digital-11-30"
    digitalClocks["11:35"] = "Dropbox:digital-11-35"
    digitalClocks["11:40"] = "Dropbox:digital-11-40"
    digitalClocks["11:45"] = "Dropbox:digital-11-45"
    digitalClocks["11:50"] = "Dropbox:digital-11-50"
    digitalClocks["11:55"] = "Dropbox:digital-11-55"
    digitalClocks["12:00"] = "Dropbox:digital-12-00"
    digitalClocks["12:05"] = "Dropbox:digital-12-05"
    digitalClocks["12:10"] = "Dropbox:digital-12-10"
    digitalClocks["12:15"] = "Dropbox:digital-12-15"
    digitalClocks["12:20"] = "Dropbox:digital-12-20"
    digitalClocks["12:25"] = "Dropbox:digital-12-25"
    digitalClocks["12:30"] = "Dropbox:digital-12-30"
    digitalClocks["12:35"] = "Dropbox:digital-12-35"
    digitalClocks["12:40"] = "Dropbox:digital-12-40"
    digitalClocks["12:45"] = "Dropbox:digital-12-45"
    digitalClocks["12:50"] = "Dropbox:digital-12-50"
    digitalClocks["12:55"] = "Dropbox:digital-12-55"


   
    
    
    
    
function MainGameScene:init()
    mBackButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/20, HEIGHT/1.067))
    if(worldSelected == 2)then
        timeLimit = 100
    elseif(worldSelected == 1)then
        timeLimit = 180
    elseif(worldSelected == 3)then
        timeLimit = 70
    elseif(worldSelected== 4)then
        timeLimit = 50
    end
    if(worldSelected == 1)then
        scoreLimit= 15
        if(scoreLimit == score)then
            Scene.Change("afterLevelWinScene")
        end
    end
    if(worldSelected == 2)then
        scoreLimit= 20
        if(scoreLimit == score)then
            Scene.Change("afterLevelWinScene")
        end
    end
    if(worldSelected == 3)then
        scoreLimit= 25
        if(scoreLimit == score)then
            Scene.Change("afterLevelWinScene")
        end
    end
    if(worldSelected == 4)then
        scoreLimit= 30
        if(scoreLimit == score)then
            Scene.Change("afterLevelWinScene")
        end
    end
    
    
    anologClockSelectedNumber = math.random(1, #numberToTime)
    digitalClockSelectedNumber = math.random(1, #numberToTime)
    digitalClockSelectedNumber2 = math.random(1,#numberToTime)
    digitalClockSelectedNumber3 = math.random(1,#numberToTime)
    digitalClockSelectedNumber4 = math.random(1,#numberToTime)
    digitalClockSelectedNumber5 = math.random(1,#numberToTime)
    
    timePicked = numberToTime[anologClockSelectedNumber]
    anologClockSelectedSpriteObject = Button(anologClocks[timePicked], vec2(WIDTH/2, HEIGHT/2.3))
    digitalClockSelectedSpriteObjectAnswer = Button(digitalClocks[timePicked], vec2(WIDTH/7,HEIGHT/2))
    print(anologClocks[timePicked])
    timePicked = numberToTime[digitalClockSelectedNumber]
    digitalClockSelectedSpriteObject = Button(digitalClocks[timePicked], vec2(WIDTH/1.2, HEIGHT/2))
    print(digitalClocks[timePicked])
    timePicked = numberToTime[digitalClockSelectedNumber2]
    digitalClockSelectedSpriteObjectTwo = Button(digitalClocks[timePicked], vec2(WIDTH/1.2, HEIGHT/3))
    print(digitalClocks[timePicked])
    timePicked = numberToTime[digitalClockSelectedNumber3]
    digitalClockSelectedSpriteObjectThree = Button(digitalClocks[timePicked],vec2(WIDTH/1.2, HEIGHT/5))
    print(digitalClocks[timePicked])
    timePicked = numberToTime[digitalClockSelectedNumber4] 
    digitalClockSelectedSpriteObjectFour = Button (digitalClocks[timePicked],vec2(WIDTH/7, HEIGHT/3))
    print(digitalClocks[timePicked])
    timePicked = numberToTime[digitalClockSelectedNumber5] 
    digitalClockSelectedSpriteObjectFive =  Button (digitalClocks[timePicked],vec2(WIDTH/7, HEIGHT/5))
    print(digitalClocks[timePicked])

    
    
    
    collectgarbage()
    -- sprite("Dropbox:digital-11-00")
    bossCharacter = Button ("Planet Cute:Enemy Bug",vec2(WIDTH/2, HEIGHT/1.2))
    health = 100
    if (health == 0)then
            score= score +1
        print(score)
    end
    
    
end

function MainGameScene:draw()
    
    
    background(83, 140, 28, 255)
    bossCharacter:draw()
   
    
    -- draw line
    fill(127, 127, 127, 255)
    strokeWidth(5)
    stroke(0, 0, 0, 255)
    rect (WIDTH/2.4, HEIGHT/12, WIDTH/6, HEIGHT/6)
    
   
    -- making a timer 
    font("Courier")
    fontSize(30)
    fill(0, 0, 0, 255)
    timeLimit = tonumber (timeLimit) - 0.02
        text (math.ceil(timeLimit), WIDTH/2, HEIGHT/5.2)
    if(timeLimit<0)then
       timeLimit= timeLimit - 0.2
    end
    if(health == 0)then
        score = score+1
    end
    text ("score ".. (score), WIDTH/2, HEIGHT/9)
    fill(0, 0, 0, 255)
    rect(WIDTH/WIDTH/2,HEIGHT/1.5, WIDTH/1,HEIGHT/50)
    -- drawing the times
    -- fill(0, 0, 0, 255)
    fontSize(70)
    fill(0, 0, 0, 255)
    

    
    -- printing the levels and the world
      fontSize(25)
    fill(0, 0, 0, 255)
    font("AmericanTypewriter")
    text ('LevelOne' , WIDTH/2, HEIGHT/6)
    text("WorldOne", WIDTH/2, HEIGHT/7)
    fill(255, 0, 0, 255)
    
    if(bossCharacter.selected == true) then
       health = health - 5
       bossCharacter.selected = false
    end
    if (health == 0) then
        Scene.Change("mainGameWinScene")
    end
    if (timeLimit <= 0)then
        Scene.Change("mainGameFailScene")
    end
    
     -- show analoge clock picked
    anologClockSelectedSpriteObject:draw()
    digitalClockSelectedSpriteObject:draw()
    digitalClockSelectedSpriteObjectTwo:draw()
    digitalClockSelectedSpriteObjectThree:draw()
    digitalClockSelectedSpriteObjectAnswer:draw()
    digitalClockSelectedSpriteObjectFour:draw()
    digitalClockSelectedSpriteObjectFive:draw()
    mBackButton:draw()
    -- sprite("Dropbox:anologe-1-15", WIDTH/2, HEIGHT/2)
    

end
function MainGameScene:touched(touch)
    digitalClockSelectedSpriteObject:touched(touch)
    bossCharacter:touched(touch)
    digitalClockSelectedSpriteObjectTwo:touched(touch)
    digitalClockSelectedSpriteObjectThree:touched(touch)
    digitalClockSelectedSpriteObjectAnswer:touched(touch)
    digitalClockSelectedSpriteObjectFour:touched(touch)
    digitalClockSelectedSpriteObjectFive:touched(touch)
    mBackButton:touched(touch)
      if(digitalClockSelectedSpriteObjectAnswer.selected == true)then
         health = health - 100
        
    end
    if(mBackButton.selected == true) then
        Scene.Change("mainWorldScene")
    end
    if (digitalClockSelectedSpriteObject.selected == true)then 
        Scene.Change("mainGameFailScene")
    elseif(digitalClockSelectedSpriteObjectTwo.selected == true)then
        Scene.Change("mainGameFailScene")
    elseif(digitalClockSelectedSpriteObjectThree.selected == true)then
        Scene.Change("mainGameFailScene")
    elseif(digitalClockSelectedSpriteObjectFour.selected == true)then
        Scene.Change("mainGameFailScene")
    elseif(digitalClockSelectedSpriteObjectFive.selected == true)then
        Scene.Change("mainGameFailScene")
    end
    
    
    

end
