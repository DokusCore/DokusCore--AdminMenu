--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
function FrameReady()
  local Data = TCTCC('DokuCore:Sync:Get:CoreData')
  return Data.FrameReady
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function UserInGame()
  local Data = TCTCC('DokusCore:Sync:Get:UserData')
  return Data.UserInGame
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function MSG(Obj)
  local Lang = TCTCC('DokusCore:Sync:Get:UserData').Language
  return _("Inventory", Obj, Lang)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SYS(Obj)
  local Lang = TCTCC('DokusCore:Sync:Get:UserData').Language
  return _("System", Obj, Lang)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Cooldown() NoteObjective("System", "Command currently in cooldown!", 'Horn', 5000) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetAllUsers()
  local players = {}
  local Sync = TSC('DokusCore:Sync:Get:UserData')
  for k,v in pairs(Sync.Online) do
    table.insert(players, { id = v.Source, name = v.Name, steam = v.SteamID })
  end
  return players
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
