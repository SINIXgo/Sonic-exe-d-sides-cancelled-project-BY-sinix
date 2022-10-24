
function onCreate()
	--background boi
	makeLuaSprite('skyFK','myhorison/sky', -800, -250)
    makeLuaSprite('grassFK','myhorison/grass', -800, 400)
    makeLuaSprite('grassBack','myhorison/grass2', -800, 400)
	makeLuaSprite('grassBack2','myhorison/grass2_Dark', -600, 100)
    makeLuaSprite('Tree','myhorison/Tree', 100, -350)
    makeLuaSprite('FL','myhorison/Flower', 1800, 400)
    makeLuaSprite('FL2','myhorison/Flower', -200, 400)
    makeLuaSprite('dark','myhorison/Flash', -800, -250)
    makeLuaSprite('sosad','myhorison/im_so_sad', 0, 0)

    addLuaSprite('skyFK')
	addLuaSprite('grassBack2')
    addLuaSprite('grassFK')
	addLuaSprite('grassBack', true);
	addLuaSprite('FL2')
	addLuaSprite('Tree')
	addLuaSprite('FL')
	addLuaSprite('dark')
	addLuaSprite('sosad')
    setObjectCamera('sosad', 'other');

	setProperty('sosad.visible',false);
	setProperty('dark.alpha', 0);
end

    function onStepHit()
        if curStep ==715 then --The number is when you want the thing to happen, you can view the curSteps in the chart editer
        setProperty('camHUD.visible', false);
		damage = true;
		targetAlpha = 1;
			doTweenAlpha('darkback', 'dark', targetAlpha, 2, 'linear');
			doTweenAlpha('grassfade', 'grassBack', 0, 2, 'linear');
		xx = 700;
        end
        if curStep ==825 then
			doTweenAlpha('enemyfade', 'dad', 0, 1, 'linear');
        end
        if curStep ==840 then
        setProperty('camHUD.visible', true);
		setProperty('dad.alpha', 1);
		yy = 600;
		xx = 950;
		targetAlpha = 0;
			doTweenAlpha('darkback', 'dark', targetAlpha, 2, 'linear');
			doTweenAlpha('grassfade', 'grassBack', 1, 2, 'linear');
        end
        if curStep ==2287 then
		setProperty('sosad.visible', true);
        end
    end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end


function opponentNoteHit()
    health = getProperty('health')
    if damage == true then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.02);
		end
    end
end