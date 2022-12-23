function onEvent(name, value1, value2)
    if name == 'red end' then
        makeLuaSprite('image', value1, 0, 0);
        addLuaSprite('image', true);
        scaleObject('image', 0.5, 0.52);
        doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
        runTimer('end', value2);
        
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'end' then
                doTweenAlpha('nothing is worth the risk', 'image', 0, 1, 'linear');
            end
        end
        
        function onTweenCompleted(tag)
            if tag == 'nothing is worth the risk' then
                removeLuaSprite('image', true);
            end
        end
    end
end