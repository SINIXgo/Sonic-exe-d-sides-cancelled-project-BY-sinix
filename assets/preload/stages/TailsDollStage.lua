function onCreate()

    makeLuaSprite('black','TailsDollStage/Black',-500,-300)
    setLuaSpriteScrollFactor('black',1,1)
    scaleObject('black',1.2,1.2)
    addLuaSprite('black',false)

    makeLuaSprite('bg','TailsDollStage/TailsBG',-500,-300)
    setLuaSpriteScrollFactor('bg',1,1)
    scaleObject('bg',1.2,1.2)
    addLuaSprite('bg',false)

    makeLuaSprite('ready','TailsDollStage/ready',250,200)


    makeLuaSprite('set','TailsDollStage/set',275,225)


    makeLuaSprite('go','TailsDollStage/go',345,175)

    setObjectCamera('bars', 'other');
    setObjectCamera('ready', 'other');
    setObjectCamera('set', 'other');
    setObjectCamera('go', 'other');
    setProperty('introSoundsSet', 'vineboom')

	addLuaSprite('bg', false);
	addLuaSprite('black', false);
end