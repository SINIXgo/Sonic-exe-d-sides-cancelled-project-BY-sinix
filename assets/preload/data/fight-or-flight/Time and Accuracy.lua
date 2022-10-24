function onCreatePost()
    setProperty('timeBar.color', getColorFromHex('FF0000'))
    setProperty('timeBar.angle', 180)
    setProperty('timeBarBG.angle', 180)
end

-- BY BEASTLY GHOST
function onUpdatePost()
    if ratingFC == '' then -- if the FC is nothing
        setProperty('scoreTxt.text', 'Sacrifices: ' .. misses .. ' | Accuracy: ?', 'Deaths: 0')
    else
        setProperty('scoreTxt.text', 'Sacrifices: ' .. misses .. ' | Accuracy: ' ..round(rating * 100, 2).. '% [' ..ratingFC..']', 'Deaths: 0')
    end
end

function round(x, n) --he's smart lol math u.u
  n = math.pow(10, n or 0)
  x = x * n
  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
  return x / n
end

function onUpdate(elapsed)
 if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
     noteTweenY("player1", 4, 515, 0.6, "static");
     noteTweenY("player2", 5, 515, 0.65, "static");
     noteTweenY("player3", 6, 515, 0.7, "static");
     noteTweenY("player4", 7, 515, 0.75, "static");
  else
     noteTweenY("player1", 4, 25, 0.6, "static");
     noteTweenY("player2", 5, 25, 0.65, "static");
     noteTweenY("player3", 6, 25, 0.7, "static");
     noteTweenY("player4", 7, 25, 0.75, "static");
  end
     noteTweenX('play0', 4, 415, 0.00001, 'static')
     noteTweenX('play1', 5, 525, 0.00001, 'static')
     noteTweenX('play2', 6, 635, 0.00001, 'static')
     noteTweenX('play3', 7, 745, 0.00001, 'static')
     noteTweenX('oppo0', 0, 9990, 0.00001, 'static')
     noteTweenX('oppo1', 1, 9990, 0.00001, 'static')
     noteTweenX('oppo2', 2, 9990, 0.00001, 'static')
     noteTweenX('oppo3', 3, 9990, 0.00001, 'static')
     noteTweenAlpha('pl1', 4, 0.65, 0.00001, 'static')
     noteTweenAlpha('pl2', 5, 0.65, 0.00001, 'static')
     noteTweenAlpha('pl3', 6, 0.65, 0.00001, 'static')
     noteTweenAlpha('pl4', 7, 0.65, 0.00001, 'static')
     for i = 0, getProperty('grpNoteSplashes.length')-1 do
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', '-36.5')
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', '-90')--why the heck it's not moving
        setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 1)
end
end