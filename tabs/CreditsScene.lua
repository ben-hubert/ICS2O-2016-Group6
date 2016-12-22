-- CreditsScene
-- Lesson 6

-- Created by: Justin Richards
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the credits scene

CreditsScene = class()

-- variables local to entire file
local aBackButton

function CreditsScene:init()

    --sprite("Cargo Bot:Command Right")
    aBackButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/20, HEIGHT/1.067))  
   
end
    

function CreditsScene:draw()
    -- Codea does not automatically call this method

    background(255, 33, 0, 255)
    sprite("Cargo Bot:Dialogue Box", WIDTH/2, HEIGHT/1.15)
    fill(0, 255, 240, 255)
    stroke(117, 0, 255, 255)
    fontSize(75)
    font("Baskerville-SemiBoldItalic")
    pushStyle()
    text("Credits", WIDTH/2, HEIGHT/1.15) 
    fill(152, 150, 150, 255)
    
 
    aBackButton:draw()
    popStyle()
end

function CreditsScene:touched(touch)
    -- Codea does not automatically call this method
    
    aBackButton:touched(touch)
    
    if(aBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end
end
