RegisterCommand('mdw', function()
    msg('Opens the mdw')
end)

function msg(text)
    TriggerEvent('chatMessage', "[SERVER]", {255, 0, 0}, text)

end