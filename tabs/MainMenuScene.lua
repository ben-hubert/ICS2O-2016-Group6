-- ICS2O-2016-Group6
-- MainMenuScene

-- Created by: Justin Richards
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #6-2016
-- This is the main menu scene

MainMenuScene = class()

-- local variables to this scene
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
    storeButton = Button("Small World:Icon", vec2(WIDTH/2, 200))
    
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 152, 0, 255)
    storeButton:draw()
    -- Do your drawing here
    
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    storeButton:touched(touch)
    
    if(storeButton.selected == true) then
       Scene.Change("storeScreenScene")
    end
end