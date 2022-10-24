function onCreate()

    makeLuaSprite('ground','GodZ/ground',-1300,-250)
    setLuaSpriteScrollFactor('ground',1,1)
    scaleObject('ground',2,2)

    makeLuaSprite('flowers','GodZ/flowers',-1300,-250)
    setLuaSpriteScrollFactor('flowers',1,1)
    scaleObject('flowers',2,2)

    makeLuaSprite('ground2','GodZ/ground2',-1300,-250)
    setLuaSpriteScrollFactor('ground2',1,1)
    scaleObject('ground2',2,2)

    makeLuaSprite('BG','GodZ/BG',-1300,-250)
    setLuaSpriteScrollFactor('BG',1,1)
    scaleObject('BG',2,2)


	makeAnimatedLuaSprite('darkness','GodZ/Void',-700,-300)addAnimationByPrefix('darkness','dance','Void bg',70,true)
    objectPlayAnimation('darkness','dance',true)
    setLuaSpriteScrollFactor('darkness',1,1)
	scaleObject('darkness', 3, 3);

	addLuaSprite('darkness', false);
	addLuaSprite('BG', false);
	addLuaSprite('ground2', false);
	addLuaSprite('flowers', false);
	addLuaSprite('ground', false);
end