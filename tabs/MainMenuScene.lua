-- ICS2O-2016-Group6
-- MainMenuScene

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #6-2016
-- This is the second scene to show up, the game logo.

MainMenuScene = class()

-- local variables to this scene
local achievementsButton
local settingsButton
local creditsButton
local helpButton
local playButton
local storeButton

-- Use this function to perform your initial setup for this scene
function MainMenuScene:init()
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    -- scene setup code here
    
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 255, 255, 255)
    if(startTime + 2 < ElapsedTime) then
        Scene.Change("mainMenuScene")
    end
    -- Do your drawing here
    
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    -- Do your touch code here
    
end