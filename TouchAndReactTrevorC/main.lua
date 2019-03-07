-- Title: buttons in lua
-- Name: Trevor C
-- Course: ICS2O/3C
-- This program...Does something when i click on the button

display.setDefault ("background", 0, 0.3, 0.9)

display.setStatusBar(display.HiddenStatusBar)

local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.y = display.contentHeight/2
blueButton.x = display.contentWidth/2
blueButton.isVisible = true

local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.y = display.contentHeight/2
redButton.x = display.contentWidth/2
redButton.isVisible = false

local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.y = display.contentHeight/3
textObject.x = display.contentWidth/2
textObject.isVisible = false

local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end
end

local function RedButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end
end

blueButton:addEventListener ("touch", BlueButtonListener)