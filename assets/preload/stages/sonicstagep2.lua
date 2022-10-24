function onCreate()

	makeLuaSprite('stagefront1', 'P2/stage', -250, -100);
	setLuaSpriteScrollFactor('stagefront1', 0.9, 0.9);
	scaleObject('stagefront1', 1.1, 1.1);

	makeLuaSprite('stagefront2', 'P2/pixels', -550, -110);
	setLuaSpriteScrollFactor('stagefront2', 0.9, 0.9);
	scaleObject('stagefront2', 1.1, 1.1);

	addLuaSprite('stagefront1', false);
	addLuaSprite('stagefront2',false);

	setProperty('stagefront1.visible', true);
	setProperty('stagefront2.visible', false);
	close(true);
end