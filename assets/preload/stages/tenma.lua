function onCreate()
	-- background shit

	makeAnimatedLuaSprite('tenma','endless/TENMA',-190,-100)addAnimationByPrefix('tenma','dance','TENMA_bg',20,true)
    objectPlayAnimation('tenma','dance',true)
	setScrollFactor('tenma', 0.9, 0.9);
	scaleObject('tenma', 1.4, 1.4);

	makeLuaSprite('stage', 'endless/circus', -500, -250);
	setScrollFactor('stage', 0.9, 0.9);
	scaleObject('stage', 0.5, 0.5);

	addLuaSprite('tenma', false);
	addLuaSprite('stage', false);
	close(true);
end