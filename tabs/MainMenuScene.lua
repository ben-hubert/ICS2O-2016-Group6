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
local creditsButton
local acheivmentsButton
local playButton

-- Use this function to perform your initial setup for this scene
function MainMenuScene:init()
    -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    --sprite("Cargo Bot:Dialogue Box")
        
    -- scene setup code here
    storeButton = Button("Project:Icon", vec2(WIDTH/2, HEIGHT/10))
    creditsButton = Button("Project:Selector", vec2(WIDTH/1.05, HEIGHT/0.9899))
    acheivmentsButton = Button("Project:Chest Closed", vec2(WIDTH/20, HEIGHT/0.9899))
    playButton = Button("Project:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    -- Do your drawing here
    background(255, 152, 0, 255)
    storeButton:draw()
    creditsButton:draw()
    acheivmentsButton:draw()
    playButton:draw()
    
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    storeButton:touched(touch)
    creditsButton:touched(touch)
    acheivmentsButton:touched(touch)
    playButton:touched(touch)
    
    if(storeButton.selected == true) then
       Scene.Change("storeScreenScene")
    end
    
    if(creditsButton.selected == true) then
       Scene.Change("creditsScene")
    end
    
    if(playButton.selected == true) then
        Scene.Change("mainWorldScene")
    end
end