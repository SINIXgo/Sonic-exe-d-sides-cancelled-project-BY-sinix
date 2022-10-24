function onCreate()

    makeLuaSprite('tree','Chaos/Trees',-300,0)
    setLuaSpriteScrollFactor('tree',0.9,0.9)
    scaleObject('tree',0.7,0.7)

    makeLuaSprite('middle','Chaos/Middle',-300,0)
    setLuaSpriteScrollFactor('middle',0.9,0.9)
    scaleObject('middle',0.7,0.7)

    makeLuaSprite('a','Chaos/Aura',-300,0)
    setLuaSpriteScrollFactor('a',0.9,0.9)
    scaleObject('a',0.7,0.7)

    makeLuaSprite('eme','Chaos/Master Emerald',-300,0)
    setLuaSpriteScrollFactor('eme',0.9,0.9)
    scaleObject('eme',0.7,0.7)

    makeLuaSprite('brick','Chaos/Brick',-300,0)
    setLuaSpriteScrollFactor('brick',0.9,0.9)
    scaleObject('brick',0.7,0.7)

    makeLuaSprite('cle','Chaos/clear',-300,0)
    setLuaSpriteScrollFactor('cle',0.9,0.9)
    scaleObject('cle',0.7,0.7)

    makeLuaSprite('bla','Chaos/black',-300,0)
    setLuaSpriteScrollFactor('bla',0.9,0.9)
    scaleObject('bla',0.7,0.7)

    addLuaSprite('tree', false);
    addLuaSprite('middle', false);
    addLuaSprite('a', false);
    addLuaSprite('eme', false);
    addLuaSprite('brick', false);
    addLuaSprite('bla', false);
    addLuaSprite('cle', false);
	close(true);
end