RegisterCommand('factions', function()
    msg('List all Factions')
end)

function msg(text)
    TriggerEvent('chatMessage', "[SERVER]", {255, 0, 0}, text)

end