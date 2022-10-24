function onCreate()

    makeLuaSprite('ground','slaybells/ground', -200, -300)
    makeLuaSprite('trees','slaybells/trees', -400,-200)
    makeLuaSprite('sky','slaybells/sky', -400, -200)
    addLuaSprite('sky')
    addLuaSprite('trees')
    addLuaSprite('ground')
    setScrollFactor('sky',0,0)
    setScrollFactor('trees',0.2,0.1)
    setScrollFactor('ground',1,1)

end