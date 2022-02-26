local menu = false

RegisterCommand("faction", function(source)
    SetMenu(not menu)
end)

RegisterNUICallback('main', function(data)
    chat(data.text, {0, 255, 0})
    SetMenu(false)

end)

RegisterNUICallback('error', function(data)
    chat(data.error, {255, 0, 0})
    SetMenu(false)
end)

RegisterNUICallback('exitMenu', function(data)
    chat("Terminated Menu", {0, 255, 0})
    SetMenu(false)
end)

Citizen.CreateThread(function()

end)

function SetMenu(bool)
    menu = bool
    SetNuiFocus(bool, bool)
    SendNuiMessage({
        type='menu',
        status = bool,
    })
end

function chat(str, color)
    TriggerEvent('chat:addMessage', {
        color = color,
        multiline = true,
        args = {str}
    })
end

RegisterCommand('factions', function()
    msg('List all Factions')
end)

function msg(text)
    TriggerEvent('chatMessage', "[SERVER]", {255, 0, 0}, text)

end