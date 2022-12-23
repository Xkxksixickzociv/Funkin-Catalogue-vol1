local bruh = true
local alpha = true

function onCreate()
    makeLuaSprite('gray', 'back', -300, -300)
    addLuaSprite('gray')
    setProperty('gray.alpha', 0.4)

    makeLuaSprite('bg', 'bg', -540, -725)
    addLuaSprite('bg', false)

    makeLuaSprite('layer', 'layer', -540, -725)
    addLuaSprite('layer', true)

end

