-- Groups tracks into an additional folder track
function log(t)
  reaper.ShowConsoleMsg(t .. '\n')
end

selectedTracks = {}
for i = 0, reaper.GetNumTracks() - 1 do
  track = reaper.GetTrack(0, i)
  if reaper.IsTrackSelected(track) then
    table.insert(selectedTracks, track)
  end
end

reaper.Undo_BeginBlock()
-- SWS: Insert track above selected tracks
cmd = reaper.NamedCommandLookup('_SWS_INSRTTRKABOVE',0)
reaper.Main_OnCommand(cmd, 0)

for i, track in ipairs(selectedTracks) do
  reaper.SetTrackSelected(track, true)
end

-- SWS: Make folder from selected tracks
cmd = reaper.NamedCommandLookup('_SWS_MAKEFOLDER', 0)
reaper.Main_OnCommand(cmd, 0)
reaper.Undo_EndBlock('Group tracks', 0)