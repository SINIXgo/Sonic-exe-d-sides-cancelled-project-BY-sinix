function onCreate()
if lowQuality then
removeLuaSprite('sky', false)
removeLuaSprite('mountains', false)
removeLuaSprite('ruins', false)
removeLuaSprite('buildings', false)
removeLuaSprite('CONK_CREET', false)
removeLuaSprite('fg', false)
makeLuaSprite('GamaBaja', 'marble/marbleOpt', 0, 0)
    scaleObject('GamaBaja',1.2,1.2);
    addLuaSprite('GamaBaja', false);
    makeLuaSprite('black', 'blackscreen', 0,0)
    addLuaSprite('black', false)
   makeLuaSprite('circle', 'StartScreens/Circle-round-a-bout', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-round-a-bout', -1280,0)
    addLuaSprite('text', true)

    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
end

if not lowQuality then
makeLuaSprite('sky', 'marble/sky', 0, 0)
    scaleObject('sky',1.2,1.2);
    addLuaSprite('sky', false)
   
    makeLuaSprite('mountains', 'marble/mountains', 100, 0)
    scaleObject('mountains',1.1,1.1);
    addLuaSprite('mountains', false);
    setScrollFactor('mountains',0.8,0.8);
    
    makeLuaSprite('ruins', 'marble/ruins', 0, 0)
    scaleObject('ruins',1.2,1.2);
    addLuaSprite('ruins', false);
    
    makeLuaSprite('buildings', 'marble/buildings', 0, 80)
    scaleObject('buildings',1.2,1.2);
    addLuaSprite('buildings', false);
    
    makeLuaSprite('CONK_CREET', 'marble/CONK_CREET', 0, 0)
    scaleObject('CONK_CREET',1.2,1.2);
    addLuaSprite('CONK_CREET', false);
    
makeLuaSprite('fg', 'marble/fg', 300, 300)
    scaleObject('fg',1.05,1.05);
    addLuaSprite('fg', true);

    makeLuaSprite('black', 'blackscreen', 0,0)
    addLuaSprite('black', false)
   makeLuaSprite('circle', 'StartScreens/Circle-round-a-bout', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-round-a-bout', -1280,0)
    addLuaSprite('text', true)

    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    end
end
function onStepHit()
if curStep == 742 then
setProperty('defaultCamZoom', 1);
end
if curStep == 769 then
setProperty('defaultCamZoom', 0.6);
end
if curStep == 962 then
setProperty('defaultCamZoom', 1);
end
if curStep == 978 then
setProperty('defaultCamZoom', 0.6);
end
end
   