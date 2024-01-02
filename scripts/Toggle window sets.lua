-- reaper.Main_OnCommand(cmd, 0)

local exists, state = reaper.GetProjExtState(0, 'script_toggle_window_sets', 'state')
state = tonumber(state) or 0
state = (state + 1) % 2

if state == 0 then
  reaper.Main_OnCommand(40455, 0) -- Screenset: Load window set #02
end
if state == 1 then
  reaper.Main_OnCommand(40456, 0) -- Screenset: Load window set #03
end

reaper.SetProjExtState(0, 'script_toggle_window_sets', 'state', state)