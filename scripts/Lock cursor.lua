-- reaper.Main_OnCommand(cmd, 0)

local strstate = reaper.GetExtState('script_lock_cursor', 'state')
local state = strstate == 'true'

if state then
  reaper.Main_OnCommand(39674, 0) -- Set default mouse modifier action for "MIDI note left click" to "Select note and move edit cursor" (factory default)
  reaper.Main_OnCommand(39705, 0) -- Set default mouse modifier action for "MIDI piano roll left click" to "Deselect all notes and move edit cursor" (factory default)
  reaper.Main_OnCommand(39513, 0) -- Set default mouse modifier action for "Media item left click" to "Select item and move edit cursor" (factory default)
  reaper.Main_OnCommand(39577, 0) -- Set default mouse modifier action for "Track left click" to "Deselect all items and move edit cursor" (factory default)
else
  reaper.Main_OnCommand(39673, 0) -- Set default mouse modifier action for "MIDI note left click" to "Select note"
  reaper.Main_OnCommand(39707, 0) -- Set default mouse modifier action for "MIDI piano roll left click" to "Deselect all notes"
  reaper.Main_OnCommand(39515, 0) -- Set default mouse modifier action for "Media item left click" to "Select item"
  reaper.Main_OnCommand(39579, 0) -- Set default mouse modifier action for "Track left click" to "Deselect all items"
end

reaper.SetExtState('script_lock_cursor', 'state', tostring(not state), true)