-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 255, 0, 0 )



local myText = display.newText( "Jacob", 160, 100, native.systemFont, 30 )
myText:setFillColor( 0, 0, 255 )

local image = display.newImageRect( "Assets/stormtrooper.png", 200, 200 )
image.x = display.contentCenterX
image.y = display.contentCenterY
image.id = "ball object"
 
local function onObjectTouch( event )
    -- it is not perfect, but we will make it better soon
    print( " Republic or Empire? ") 
    local image = display.newImageRect( "Assets/clonetrooper.png", 200, 200 )
image.x = 160
image.y = 240

    return true
end

image:addEventListener( "touch", onObjectTouch )