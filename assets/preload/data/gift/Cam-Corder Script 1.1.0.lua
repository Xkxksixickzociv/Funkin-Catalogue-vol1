---@diagnostic disable: lowercase-global, undefined-global
--Created by RamenDominoes ( https://gamebanana.com/members/2135195 ) (v1.5.1, Cleanin' up the og "code")
--If you use this script CREDIT WOULD BE NICE, thanks a bunch!!!
--I think this shit looks pretty cool imo

HudColor = 'FFFFFF'
CameraType = 'HUD'

---------------------------------------------------------
--------------------Gamer Shit Ignore--------------------
---------------------------------------------------------
function simpleishGraphic(tag, xPos, yPos, graphicWidth, graphicHeight, color, camera)
	makeLuaSprite(tag, '', xPos, yPos)
	makeGraphic(tag, graphicWidth, graphicHeight, color)
	setObjectCamera(tag, camera)
	addLuaSprite(tag)
end
function simpleishText(tag, text, textWidth, xPos, yPos, textSize, textColor, borderSize, alignment, camera)
	makeLuaText(tag, text, textWidth, xPos, yPos)
	setTextSize(tag, textSize)
	setTextColor(tag, textColor)
	setTextBorder(tag, borderSize, HudColor)
	setTextAlignment(tag, alignment)
	setObjectCamera(tag, camera)
	addLuaText(tag)
end
---------------------------------------------------------
--------------------Gamer Shit Ignore--------------------
---------------------------------------------------------

function onCreatePost()

	setProperty('healthBarBG.visible', false); setProperty('healthBar.visible', false)
	setProperty('scoreTxt.visible', false); setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false); setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false); setProperty('timeTxt.visible', false)

	--Outer Layer
	simpleishGraphic('CCOXTL', 30, 30, 300, 15, HudColor, CameraType)
	simpleishGraphic('CCOXTR', 950, 30, 300, 15, HudColor, CameraType)
	simpleishGraphic('CCOXBL', 30, 675, 300, 15, HudColor, CameraType)
	simpleishGraphic('CCOXBR', 950, 675, 300, 15, HudColor, CameraType)

	simpleishGraphic('CCOYTL', 30, 30, 15, 150, HudColor, CameraType)
	simpleishGraphic('CCOYTR', 1235, 30, 15, 150, HudColor, CameraType)
	simpleishGraphic('CCOYBL', 30, 540, 15, 150, HudColor, CameraType)
	simpleishGraphic('CCOYBR', 1235, 540, 15, 150, HudColor, CameraType)

	--Inner Layer
	simpleishGraphic('CCIXTL', 478, 260, 100, 3, HudColor, CameraType)
	simpleishGraphic('CCIXTR', 700, 260, 100, 3, HudColor, CameraType)
	simpleishGraphic('CCIXBL', 478, 457, 100, 3, HudColor, CameraType)
	simpleishGraphic('CCIXBR', 700, 457, 100, 3, HudColor, CameraType)

	simpleishGraphic('CCIYTL', 478, 260, 3, 50, HudColor, CameraType)
	simpleishGraphic('CCIYTR', 797, 260, 3, 50, HudColor, CameraType)
	simpleishGraphic('CCIYBL', 478, 410, 3, 50, HudColor, CameraType)
	simpleishGraphic('CCIYBR', 797, 410, 3, 50, HudColor, CameraType)

	--Crosshair
	simpleishGraphic('CrossHairX', 0, 0, 3, 40, HudColor, CameraType)
	screenCenter('CrossHairX','xy' )
	simpleishGraphic('CrossHairY', 0, 0, 40, 3, HudColor, CameraType)
	screenCenter('CrossHairY','xy' )

	--BatteryBorder
	simpleishGraphic('BXT', 30, 285, 75, 3, HudColor, CameraType)
	simpleishGraphic('BXB', 30, 437, 75, 3, HudColor, CameraType)
	simpleishGraphic('BYL', 30, 287, 3, 150, HudColor, CameraType)
	simpleishGraphic('BYR', 102, 287, 3, 150, HudColor, CameraType)
	simpleishGraphic('BT', 58, 277, 20, 10, HudColor, CameraType)

	--BatteryCells
	simpleishGraphic('BC1', 36, 291, 63, 26, HudColor, CameraType)
	simpleishGraphic('BC2', 36, 320, 63, 26, HudColor, CameraType)
	simpleishGraphic('BC3', 36, 349, 63, 26, HudColor, CameraType)
	simpleishGraphic('BC4', 36, 378, 63, 26, HudColor, CameraType)
	simpleishGraphic('BC5', 36, 408, 63, 26, HudColor, CameraType)

	--HP Bar
	simpleishGraphic('HPBS', 1235, 250, 2, 220, HudColor, CameraType)
	simpleishGraphic('HPM0', 1235, 470, 20, 2, HudColor, CameraType)
	simpleishGraphic('HPM25', 1235, 415, 20, 2, HudColor, CameraType)
	simpleishGraphic('HPM50', 1235, 360, 20, 2, HudColor, CameraType)
	simpleishGraphic('HPM75', 1235, 305, 20, 2, HudColor, CameraType)
	simpleishGraphic('HPM100', 1235, 248, 20, 2, HudColor, CameraType)
	simpleishGraphic('HPBL', 1235, 469, 5, 1, HudColor, CameraType)

	--Recording Light
	simpleishGraphic('RecordingLight', 1070, 600, 35, 35, 'FF0000', CameraType)

	--HUD Text
	simpleishText('SongName', songName, screenWidth, 75, 590, 50, HudColor, 0, 'left', CameraType)
	simpleishText('ScoreAndRating', 'Score: 0 | Rating: [N/A]', screenWidth, 75, 645, 18, HudColor, 0, 'left', CameraType)
	simpleishText('AccuracyAndMisses', 'Accuracy: 0% | Misses: 0', screenWidth, -75, 645, 18, HudColor, 0, 'right', CameraType)
	simpleishText('SongTimer', '00:00:000', screenWidth, 0, 2, 50, HudColor, 0, 'center', CameraType)
	simpleishText('RecordingLabel', 'REC', screenWidth, -75, 590, 50, HudColor, 0, 'right', CameraType)

	--HP Text
	simpleishText('HealthLabel', 'HP', screenWidth, 600, 480, 30, HudColor, 0, 'center', CameraType)
	simpleishText('CurrentHP', ''..(getProperty('health')*50)..'%', screenWidth, 600, 195, 30, HudColor, 0, 'center', CameraType)

	--DownScroll Shit
	if downscroll then
		setProperty('SongName.y', 85)
		setProperty('ScoreAndRating.y', 60)
		setProperty('AccuracyAndMisses.y', 60)
		setProperty('SongTimer.y', 665)
		setProperty('RecordingLabel.y', 85)
		setProperty('RecordingLight.y', 95)
	end
end

function onRecalculateRating()
	setTextString('ScoreAndRating', 'Score: '..score..' | Rating: ['..ratingFC..']');
	setTextString('AccuracyAndMisses', 'Accuracy: '..string.format("%.2f", rating*100)..'% | Misses: '..misses)
end

function onUpdate()

	songCompletion = (getProperty('songPercent') *100)
	songCompletion = string.format("%.0f", songCompletion)

	Health = getProperty('healthBar.percent')

	setProperty('HPBL.y', 470 - (Health*2.2))
	makeGraphic('HPBL', 5, (Health*2.2)+1, HudColor)

	if songCompletion == '20' then
		removeLuaSprite('BC1')
	elseif songCompletion == '40' then
		removeLuaSprite('BC2')
	elseif songCompletion == '60' then
		removeLuaSprite('BC3')
	elseif songCompletion == '80' then
		removeLuaSprite('BC4')

	elseif songCompletion ==  '90' then
		setProperty('BC5.alpha', 0.99)
	elseif getProperty('BC5.alpha') == 0.99 then
		setProperty('BC5.alpha', 0.1)
	elseif getProperty('BC5.alpha') == 0.1 then
		doTweenAlpha('lowBattery', 'BC5', 0.99, 0.5)

	elseif songCompletion == '99' then
		removeLuaSprite('BC5')
	end

	if getProperty('RecordingLight.alpha') == 1 then
		doTweenAlpha('RecordingLightTween', 'RecordingLight', 0, 1)
	elseif getProperty('RecordingLight.alpha') == 0 then
		doTweenAlpha('RecordingLightTween', 'RecordingLight', 1, 1)
	end
	setTextString('CurrentHP', Health..'%')
end

function onSongStart()
	function onUpdatePost()
		Timer = ((getPropertyFromClass('Conductor', 'songPosition') /1000))
		Milliseconds = ((Timer * 1000) % 1000)
		Seconds = (Timer % 60)
		Minutes = ((Timer - Seconds) / 60)

		if Seconds == 60 then
			Minutes = Minutes + 1
		end
		CurrentTime = string.format("%02d:%02d:%03d", Minutes, Seconds, Milliseconds)
		setTextString('SongTimer', CurrentTime)
	end
end