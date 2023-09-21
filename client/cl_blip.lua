local blips = {
  {title = "Hotdog Stand", colour = 5, id = 66, x = 161.686, y = -996.554, z = 28.352},
  {title = "Hotdog Stand", colour = 5, id = 66, x = -829.863, y = -966.666, z = 14.106},
}

Citizen.CreateThread(function()
  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 0.6)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)

