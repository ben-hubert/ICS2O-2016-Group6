MainGameFailScene = class()
local timelimit = 1
function MainGameFailScene:init(x)
    -- you can accept and set parameters here
    self.x = x
end
    
function MainGameFailScene:draw() 
    -- Codea does not automatically call this method
    background(203, 32, 15, 255)
    font("AmericanTypewriter-Bold")
    fontSize(50)
    fill(0, 0, 0, 255)
    text("Failed",WIDTH/2,HEIGHT/2)
    timelimit = timelimit - 0.02
    math.ceil(timelimit)
    if (timelimit <=0)then
        Scene.Change("mainGameScene")
        timelimit= 1
    end
    
end

function MainGameFailScene:touched(touch)
    -- Codea does not automatically call this method
    
end
