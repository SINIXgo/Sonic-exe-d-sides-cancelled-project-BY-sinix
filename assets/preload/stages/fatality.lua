function onCreate()--fatal
  makeAnimatedLuaSprite('launchbase', 'fatal/launchbase', -1050, -1110); 
  addAnimationByPrefix('launchbase', 'launchbase', 'idle', 15, true);  
  objectPlayAnimation('launchbase', 'launchbase', true)
  scaleObject('launchbase', 6, 6);
  addLuaSprite('launchbase', false);
  setProperty('launchbase.visible', true);
  
  setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-fatal-death')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fatal-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', '')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', '')
end


function onEvent(name,value1,value2)
if name == "esotilin" then
if value1 == "aaa" then
setProperty('launchbase.visible', false);
objectPlayAnimation('domain', 'domain', true)
triggerEvent('Camera Follow Pos', '', '');
setProperty('domain.visible', true);
end 
if value1 == "eee" then
setProperty('domain.visible', false);
objectPlayAnimation('truefatalstage', 'truefatalstage', true)
triggerEvent('Camera Follow Pos', '', '');
setProperty('truefatalstage.visible', true);
end
if value1 == "ooo" then
setProperty('domain2.visible', false);
objectPlayAnimation('truefatalstage', 'truefatalstage', true)
setProperty("defaultCamZoom", 0.7)
triggerEvent('Camera Follow Pos', '', '');
setProperty('truefatalstage.visible', true);


end
--i hope you don't steal this
function onBeatHit()

     if curBeat %1 == 0 then


    setProperty('bg.antialiasing', false);
	

        setProperty('timeBar.color', getColorFromHex('ff0015'))
       end
    end
  end
end