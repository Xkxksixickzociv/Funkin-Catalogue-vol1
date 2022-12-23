function onCreate()
    makeAnimatedLuaSprite('vintage', 'vintage', -200, -350)
    scaleObject('vintage', 3, 3)
    addAnimationByPrefix('vintage', 'idle', 'idle', 16, true)
    objectPlayAnimation('vintage', 'idle', true)
    setObjectCamera('vintage', 'other')
    setProperty('vintage.alpha', 0.5)
    addLuaSprite('vintage', true)

end