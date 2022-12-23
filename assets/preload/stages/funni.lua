local bruh = true
local alpha = true

function onCreate()
    makeLuaSprite('gray', 'back', -300, -300)
    addLuaSprite('gray')
    setProperty('gray.alpha', 0.4)

    makeLuaSprite('bg', 'bgcolor', -540, -725)
    addLuaSprite('bg', false)

    makeLuaSprite('layer', 'layer-thonk', -540, -725)
    addLuaSprite('layer', true)

    makeAnimatedLuaSprite('vintage', 'vintage', -200, -350)
    scaleObject('vintage', 3, 3)
    addAnimationByPrefix('vintage', 'idle', 'idle', 16, true)
    objectPlayAnimation('vintage', 'idle', true)
    setBlendMode('vintage', 'lighten')
    setObjectCamera('vintage', 'camHud')
    setProperty('vintage.alpha', 1)
    addLuaSprite('vintage', true)
end

