function onCreate()
	-- hoggin out
	makeLuaSprite('w','whitespace', -2500, -1400 )
	setScrollFactor('w', 1, 1)
	scaleObject('w', 100, 100)
	addLuaSprite('w', false)
	setProperty('w.visible', true)
	
	makeLuaSprite('bg','hog/Sky', -1500, -600 )
	setScrollFactor('bg', 0.2, 0.2)
	scaleObject('bg', 2, 2)
	addLuaSprite('bg', false)
	setProperty('bg.visible', true)
	
	makeLuaSprite('mountains','hog/Ground', -830, -600 )
	setScrollFactor('mountains', 0.1, 0.1)
	scaleObject('mountains', 1.35, 1.35)
	addLuaSprite('mountains', false)
	setProperty('mountains.visible', true)

	makeLuaSprite('Foreground','hog/Foreground', -830, -800 )
	setScrollFactor('Foreground', 0.4, 0.4)
	scaleObject('Foreground', 1.35, 1.35)
	addLuaSprite('Foreground', false)
	setProperty('Foreground.visible', true)
	
	makeAnimatedLuaSprite('targt','hog/TargetLock', 810, 200)
	addAnimationByPrefix('targt','crap','TargetLock', 24, false)
	setScrollFactor('targt', 1, 1)
	addLuaSprite('targt', true)
	scaleObject('targt', 1.2, 1.2)
	setProperty('targt.visible', false)
	
            makeLuaSprite('bgs','scorched/bg', -1800, -600 )
	        setScrollFactor('bgs', 1, 1)
	        scaleObject('bgs', 2.2, 2)
	        addLuaSprite('bgs', false)
	        setProperty('bgs.visible', false)
					
		    makeLuaSprite('mountainss','scorched/motains', -830, -190 )
	        setScrollFactor('mountainss', 0.4, 0.4)
	        scaleObject('mountainss', 1.35, 1.35)
    	    addLuaSprite('mountainss', false)
	        setProperty('mountainss.visible', false)
					
     		makeAnimatedLuaSprite('watr','scorched/Waterfalls', -1150, 60)
	        addAnimationByPrefix('watr','wooh','British', 24, true)
	        setScrollFactor('watr', 0.5, 0.5)
	        addLuaSprite('watr', false)
	        scaleObject('watr', 1.2, 1.2)
	        setProperty('watr.visible', false)
					
		    makeLuaSprite('damn','scorched/ground', -900, -470 )
	        setScrollFactor('damn', 0.7, 0.7)
	        scaleObject('damn', 1.3, 1.2)
	        addLuaSprite('damn', false)
	        setProperty('damn.visible', false)
					
		    makeAnimatedLuaSprite('spike','scorched/ExeAnimatedBG_Assets', -160, -680)
	        addAnimationByPrefix('spike','azz','ExeBGAnim', 48, true)
    	    setScrollFactor('spike', 0.7, 0.7)
	        addLuaSprite('spike', false)
	        scaleObject('spike', 1, 1)
	        setProperty('spike.visible', false)
					
		    makeLuaSprite('treez','scorched/trees', -970, -330 )
	        setScrollFactor('treez', 0.9, 0.9)
	        scaleObject('treez', 1.35, 1.35)
	        addLuaSprite('treez', false)
	        setProperty('treez.visible', false)
			
            makeLuaSprite('floors','scorched/floor', -970, 540 )
	        setScrollFactor('floors', 1, 1)
	        scaleObject('floors', 1.35, 1.35)
	        addLuaSprite('floors', false)
	        setProperty('floors.visible', false)
				
     	    makeLuaSprite('rocks','scorched/rocks', -1150, 540 )
    	    setScrollFactor('rocks', 1.4, 1.4)
	        scaleObject('rocks', 1.35, 1.35)
	        addLuaSprite('rocks', true)
	        setProperty('rocks.visible', false)
					
		    makeLuaSprite('dark','scorched/overlay', -2100, -1300 )
	        setScrollFactor('dark', 1, 1)
	        scaleObject('dark', 2.2, 2)
	        addLuaSprite('dark', true)
	        setProperty('dark.visible', false)				
end
	
function onEvent(name,value1,value2)
	if name == 'Scorched' then
		if value1 == 'on' then
			removeLuaSprite('targt', true)
		    removeLuaSprite('bg', true)
		    removeLuaSprite('mountains', true)	
		    removeLuaSprite('water', true)	
		    removeLuaSprite('hill', true)	
		    removeLuaSprite('tree', true)
		    removeLuaSprite('floor', true)
		    removeLuaSprite('rock', true)
		    removeLuaSprite('light', true)
		    setProperty('bgs.visible', true)
		    setProperty('mountainss.visible', true)
		    setProperty('watr.visible', true)
		    setProperty('damn.visible', true)
			setProperty('treez.visible', true)
			setProperty('floors.visible', true)
			setProperty('rocks.visible', true)
			setProperty('dark.visible', true)
		end
		
		if value1 == 'off' then
			setProperty('bgs.visible', false)
		    setProperty('mountainss.visible', false)
		    setProperty('watr.visible', false)
		    setProperty('damn.visible', false)
			setProperty('treez.visible', false)
			setProperty('floors.visible', false)
			setProperty('rocks.visible', false)
			setProperty('dark.visible', false)
			setProperty('dad.color', getColorFromHex('000000'))
			setProperty('boyfriend.color', getColorFromHex('000000'))
			setProperty('iconP1.color', getColorFromHex('000000'))
			setProperty('iconP2.color', getColorFromHex('000000'))
		end
	end
end	

function onStepHit()
	if curStep == 208 then
		setProperty('targt.visible', true)
		objectPlayAnimation('targt','crap', true)
	end	
		
	if curStep == 224 then
		setProperty('targt.visible', false)
	end
	
	if curStep == 296 then
		setProperty('targt.visible', true)
		objectPlayAnimation('targt','crap', true)
	end	
		
	if curStep == 312 then
		setProperty('targt.visible', false)
	end
end
	
	