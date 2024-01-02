local tr = reaper.GetSelectedTrack(0,0)
if not tr then return end

local fx = reaper.TrackFX_GetByName(tr, 'Notes buffer', false)
if fx == -1 then return end

local ret, last_note = reaper.TrackFX_GetFormattedParamValue(tr, fx, 0)
if not ret or last_note == '-1' then return end
last_note = tonumber(last_note)

for i = 0, reaper.TrackFX_GetCount(tr) - 1 do
  local ret, param_name = reaper.TrackFX_GetParamName(tr, i, 3)
  if ret and param_name == 'Note range start' then
    local _, note_start = reaper.TrackFX_GetFormattedParamValue(tr, i, 3)
    local _, note_end = reaper.TrackFX_GetFormattedParamValue(tr, i, 4)
    if tonumber(note_start) <= last_note and tonumber(note_end) >= last_note then
      reaper.TrackFX_Show(tr, i, 1)
      goto End
    end
  end
end

:: End ::