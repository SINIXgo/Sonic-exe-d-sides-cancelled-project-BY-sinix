function onCreate()

    makeLuaSprite('bg','TT/bg',-350,-66)
    setLuaSpriteScrollFactor('bg',1,1)
    scaleObject('bg',0.8,0.8)

    makeLuaSprite('bg2','TT/bg2',-350,-66)
    setLuaSpriteScrollFactor('bg2',1,1)
    scaleObject('bg2',0.8,0.8)

	addLuaSprite('bg2', false);
	addLuaSprite('bg', false);
end