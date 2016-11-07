-- Lesson 4a

-- By: James Lee
-- Created October 2016
-- Created for ICS2O
-- This program displays a sprite moving when touched to the position of the user's finger.

local manPosition = vec2()
local imageName = "SpaceCute:BeetleShip"
local imageSize = vec2()

-- Use this function to perform your initial setup
function setup()
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill() 
    noSmooth() 
    noStroke()
    pushStyle()
    
    -- get image info
    manPosition = vec2(WIDTH/2, HEIGHT/2)
    imageSize = vec2(spriteSize(imageName))
end

-- This function gets called once every frame
function touched(touch) 
     -- local variables
    local currentTouchPosition = vec2(touch.x, touch.y)
    
     -- move the man around
    manPosition.x = manPosition.x + (Gravity.x*10)
    manPosition.y = manPosition.y + (Gravity.y*10)
    
    -- do your drawing here
    background(36, 25, 25, 255)
    sprite("SpaceCute:Beetle Ship", manPosition.x, manPosition.y)
end