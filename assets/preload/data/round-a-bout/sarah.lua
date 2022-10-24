-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)
--Hecho para Needlemouse por Nickobelit

function onCreate()
	makeAnimatedLuaSprite('Sarah', 'characters/Sarah', 1000, 600); -- Change to characters idle in XML
	addAnimationByPrefix('Sarah', 'idle', 'Sarah_IDLE', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('Sarah', 'singLEFT', 'Sarah_LEFT', 24, false); -- Change to characters leftnote in XML 
    addAnimationByPrefix('Sarah', 'singDOWN', 'Sarah_DOWN', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('Sarah', 'singUP', 'Sarah_UP', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('Sarah', 'singRIGHT', 'Sarah_RIGHT', 24, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Sarah','idle',true)
	scaleObject('Sarah',1.2,1.2);
	setProperty('Sarah.visible', false);
	addLuaSprite('Sarah', false); -- false = add behind characters, true = add over characters
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		if getProperty('Sarah.animation.curAnim.name') == 'idle' then
			objectPlayAnimation('Sarah','idle',true)
	        setProperty('Sarah.offset.x',0)
	        setProperty('Sarah.offset.y',0)
	end
end
end

function onStepHit()
if curStep == 763 then
setProperty('Sarah.visible', true);
end

if curStep == 975 then
setProperty('Sarah.visible', false);
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	followchars = true
	if noteType == 'Both Dads Sing' then
		followchars = false
		triggerEvent('dad2sing',noteData,'')
	end
end