local Fear = -0; --setFear
n = false; --Normal
s = false; --slightly
a = false; --aggresive
FearFull = false; --instant death

finishedGameover = false;

function onCreatePost()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-starved-die');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'starved-death');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'starved-loop');
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'starved-retry');
    --addCharacterToList('bf-starved-die')
--BF Camera because new version of psych is broken
     setProperty('cameraSpeed', 1)
     cameraSetTarget('boyfriend'); --idk why it's going down lol
end
function onCreate()
      makeLuaSprite('city', 'exe/starved/city', -395, -248)
      makeLuaSprite('towers', 'exe/starved/towers', -395, -248)
      makeLuaSprite('stage', 'exe/starved/stage', -395, -248)
      makeLuaSprite('black', 'exe/starved/black', -329, -248)
      makeLuaSprite('deadSonic', 'exe/starved/sonicisfuckingdead', 160, 100)
      makeLuaSprite('light', 'exe/starved/light', -395, -248)
      makeLuaSprite('black2', 'exe/StartScreen/black', 0, 0)
      makeLuaSprite('Circle', 'exe/StartScreen/Circle-fight-or-flight', 1000, 90)
      makeLuaSprite('Text', 'exe/StartScreen/Text-fight-or-flight', -1000, 90)
   --Fear Bar
     makeLuaSprite('fearBG', 'fearbarBG', 1180, 185)
     makeLuaSprite('fearBar', 'fearbar', 1180, 185)
     makeLuaSprite('bar', nil, 1205, 208)
   --FearBar graphic
     makeGraphic('bar', 29, 260, 'FF0000') --260
   --Object's Camera
      setObjectCamera('fearBar', 'hud')
      setObjectCamera('bar', 'hud')
      setObjectCamera('fearBG', 'hud')
      setObjectCamera('black2', 'other')
      setObjectCamera('Circle', 'other')
      setObjectCamera('Text', 'other')
   --Scale
      scaleObject('deadSonic', 0.65, 0.65)
      scaleObject('city', 1.53, 1.53)
      scaleObject('towers', 1.53, 1.53)
      scaleObject('stage', 1.53, 1.53)
      scaleObject('light', 1.53, 1.53)
      scaleObject('black', 11111, 11111)
      scaleObject('Circle', 0.75, 0.75)
      scaleObject('Text', 0.75, 0.75)
   --Alpha
      setProperty('light.alpha', 1)
      setProperty('black.alpha', 0)
   --SetProperty
     setProperty('bar.scale.y', Fear)
     setProperty('bar.origin.y', getProperty('bar.height'));
   --Blend
     setBlendMode('light', 'add');
   --Adding To the Game
      addLuaSprite('city', false)
      addLuaSprite('towers', false)
      addLuaSprite('stage', false)
      addLuaSprite('black', false)
      addLuaSprite('deadSonic', false)
      addLuaSprite('light', true)
      addLuaSprite('fearBG', true)
      addLuaSprite('bar', true)
      addLuaSprite('fearBar', true)
      addLuaSprite('black2', true)
      addLuaSprite('Circle', true)
      addLuaSprite('Text', true)
end

function onCountdownTick(counter)
  if counter == 1 then
	doTweenX('cercle', 'Circle', 190, 0.3, 'linear')
	doTweenX('text', 'Text', 180, 0.3, 'linear')
end
end

function noteMissPress(id, direction, noteType, isSustainNote)
    setProperty('bar.scale.y', getProperty('bar.scale.y') + 0.05)
end
function noteMiss()
    setProperty('bar.scale.y', getProperty('bar.scale.y') + 0.05)
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
if isSustainNote == false then
     --Fear = Fear + 0.0025;
     setProperty('bar.scale.y', getProperty('bar.scale.y') + 0.0025)
     --setProperty('bar.y', getProperty('bar.y') + 0.0018)
     --updateHitbox('bar'); --you mf i spend 1hr and up just to fix it and it's was you causing THE PROBLEM!?!? whyyy
end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
if not isSustainNote then
     --Fear = Fear + 0.0025;
     setProperty('bar.scale.y', getProperty('bar.scale.y') - 0.0012)
     end
if isSustainNote then
     setProperty('bar.scale.y', getProperty('bar.scale.y') - 0.0009)
     --setProperty('bar.y', getProperty('bar.y') - 0.0010) --idk heheheeh
     --updateHitbox('bar');
end
end

function onSongStart()
doTweenAlpha('black2', 'black2', 0, 1.5, 'linear');
doTweenAlpha('citcl', 'Circle', 0, 1.5, 'linear');
doTweenAlpha('test', 'Text', 0, 1.5, 'linear');
end

function onStepHit()
if curStep == 1184 then --Blammed
   doTweenColor('bf', 'boyfriend', 'FF0000', 1.15, 'quadInOut')
   doTweenColor('dad', 'dad', 'FF0000', 1.15, 'quadInOut')
   doTweenColor('deadSonic', 'deadSonic', 'FF0000', 1.15, 'quadInOut')
   doTweenAlpha('black', 'black', 1, 1.15, 'linear')
   doTweenAlpha('light', 'light', 0, 1.15, 'linear')
end
if curStep == 1440 then
   doTweenColor('bf', 'boyfriend', '0xFFFFFFFF', 1.15, 'quadInOut')
   doTweenColor('dad', 'dad', '0xFFFFFFFF', 1.15, 'quadInOut')
   doTweenColor('deadSonic', 'deadSonic', '0xFFFFFFFF', 1.15, 'quadInOut')
   doTweenAlpha('black', 'black', 0, 1.15, 'linear')
   doTweenAlpha('light', 'light', 1, 1.15, 'linear')
end
if curStep == 1472 then
   doTweenColor('bf', 'boyfriend', 'FF0000', 1.15, 'quadInOut')
   doTweenColor('dad', 'dad', 'FF0000', 1.15, 'quadInOut')
   doTweenColor('deadSonic', 'deadSonic', 'FF0000', 1.15, 'quadInOut')
   doTweenAlpha('black', 'black', 1, 1.15, 'linear')
   doTweenAlpha('light', 'light', 0, 1.15, 'linear')
end
if curStep == 1728 then
   doTweenColor('bf', 'boyfriend', '0xFFFFFFFF', 1.15, 'quadInOut')
   doTweenColor('dad', 'dad', '0xFFFFFFFF', 1.15, 'quadInOut')
   doTweenColor('deadSonic', 'deadSonic', '0xFFFFFFFF', 1.15, 'quadInOut')
   doTweenAlpha('black', 'black', 0, 1.15, 'linear')
   doTweenAlpha('light', 'light', 1, 1.15, 'linear')
end
if n == true then --Normal where you can still gain health a bit
      health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.010);
end
end
if s == true then --Slightly Drain
      health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.023);
end
end
if m == true then --Mild Drain
       health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.030); --ey you're dead if you miss :)
end
if a == true then --Aggresive Drain
       health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.040); --ey you're dead if you miss :)
end
end
end

function onUpdate()
if FearFull == true then--Instant Death
    setProperty('health', -500)
    setProperty('bar.scale.y', 1.024000000000003);
end
if getProperty('bar.scale.y') > 0.562200000000012 and getProperty('bar.scale.y') < 0.667400000000013 then --wow
      n = true;
      s = false;
      m = false;
      a = false;
      i = false;
end
if getProperty('bar.scale.y') >  0.665400000000016 and getProperty('bar.scale.y') < 0.818000000000020 then --wow
      n = false;
      s = true;
      m = false;
      a = false;
      i = false;
end
if getProperty('bar.scale.y') > 0.816500000000022 and getProperty('bar.scale.y') < 0.940000000000010 then --wow
      n = false;
      s = false;
      m = true;
      a = false;
      i = false;
end
if getProperty('bar.scale.y') > 0.940000000000010 and getProperty('bar.scale.y') < 1.024000000000000 then --wow
      n = false;
      s = false;
      m = false;
      a = true;
      i = false;
end
if getProperty('bar.scale.y') > 1.024000000000003 then --wow
      n = false;
      s = false;
      m = false;
      a = false;
      FearFull = true;
end
end
end

function onGameOver()
	setProperty('cameraSpeed', 100)
	cameraSetTarget('boyfriend')
end

function onGameOverConfirm(reset)
    cameraFlash('other', 'FF0000', 3, true) 
    setProperty('boyfriend.visible', false)--idfk
	finishedGameover = true;
end
--cunkin LOVE THIS SONG AAAAAAAA why sonic.exe got cancelled 
--debugPrint(getProperty('bar.scale.y'));
