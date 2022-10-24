local bfx = 200;
local bfy = 0;
local zoomshit = 0;

function onCreate()

end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom',1.05)
      --  cameraSetTarget('dad')
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom',0.85)
        doTweenZoom('camZ', 'camGame', 0.85, 0.5, 'linear');
        --cameraSetTarget('boyfriend')
    end
end

function onUpdate()
--fake 3d oooo
    zoomshit = (getProperty('camGame.zoom')/0.75);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',zoomshit)
    setProperty('boyfriend.scale.y',zoomshit)
end