function onCountdownTick(counter)
    if counter == 0 then
        playSound('intro3-fatal', 1)
    end
    if counter == 1 then
        
        playSound('intro2-fatal', 1)
    end
    if counter == 2 then
        
        playSound('intro1-fatal', 1)
    end
    if counter == 3 then
        playSound('introGo-fatal', 1)
    end
end