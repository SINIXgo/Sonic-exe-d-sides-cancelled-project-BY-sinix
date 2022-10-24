function onCreate()
	-- background shit
	makeLuaSprite('stage', 'mit/ground', -500, -1900);
	setScrollFactor('stage', 0.9, 0.9);
	scaleObject('stage', 1.5, 1.5);

	makeLuaSprite('save', 'mit/save spot', -5, -1250);
	setScrollFactor('save', 0.9, 0.9);
	scaleObject('save', 0.9, 0.9);

	makeLuaSprite('jel', 'mit/jelly', 0, -1150);
	setScrollFactor('jel', 0.9, 0.9);

	makeLuaSprite('jell', 'mit/jelly signal', 0, -1200);
	setScrollFactor('jell', 0.9, 0.9);
	scaleObject('jell', 0.9, 0.9);

	makeLuaSprite('BG', 'mit/wall', -400, -1100);
	setScrollFactor('BG', 0.9, 0.9);
	scaleObject('BG', 0.9, 0.9);

makeLuaSprite('ball', 'mit/ball', 0, -1000);
	setScrollFactor('ball', 0.9, 0.9);

makeLuaSprite('ice', 'mit/ice', 100, -950);
	setScrollFactor('ice', 0.9, 0.9);
	scaleObject('ice', 0.9, 0.9);

	makeAnimatedLuaSprite('sunky','mit/sunky',250,-350)addAnimationByPrefix('sunky','dance','Sunky Idel!!!',26,true)
    objectPlayAnimation('sunky','dance',true)
	setScrollFactor('sunky', 0.9, 0.9);
	scaleObject('sunky', 0.9, 0.9);

    addLuaSprite('BG', false);
	addLuaSprite('stage', false);
	addLuaSprite('save', false);
	addLuaSprite('jel', false);
	addLuaSprite('ball', false);
	addLuaSprite('jell', false);
	addLuaSprite('sunky', false);
	addLuaSprite('ice', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end