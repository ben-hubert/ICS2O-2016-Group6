-- SplashScreenScene
-- Lesson 6

-- Created by: Justin Richards
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the store scene

StoreScreenScene = class()

-- variables local to entire file
local moveBackButton

function StoreScreenScene:init()

    --sprite("Cargo Bot:Command Right")
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(100, 700))  
   
end
    

function StoreScreenScene:draw()
    -- Codea does not automatically call this method

    background(0, 255, 180, 255)
    sprite("Cargo Bot:Dialogue Box", WIDTH/2, 650)
    fill(199, 255, 0, 255)
    stroke(221, 255, 0, 255)
    fontSize(75)
    font("Copperplate-Bold")
    text("Shop", WIDTH/2, 650) 
    fill(152, 150, 150, 255)
    text("🛡", 650, 646)
 
    moveBackButton:draw()
end

function StoreScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveBackButton:touched(touch)
    
    if(moveBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end
end