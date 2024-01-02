
function toggleEnvelopes(track)
  local numenvs = reaper.CountTrackEnvelopes(track)
  local toggle = false
  for i = 0, numenvs - 1 do
    local env = reaper.GetTrackEnvelope(track, i)
    br_env = reaper.BR_EnvAlloc(env, false)
    active, visible, armed, inLane, laneHeight, defaultShape, minValue, maxValue, centerValue, type, faderScaling = reaper.BR_EnvGetProperties(br_env)
    if not active and i == 0 then
      toggle = true
    end
    reaper.BR_EnvSetProperties(br_env, toggle, visible, armed, inLane, laneHeight, defaultShape, faderScaling)
    reaper.BR_EnvFree(br_env, 1)
  end
end

numtracks = reaper.CountTracks(0)
for i = 0, numtracks - 1 do
  local track = reaper.GetTrack(0, i)
  if reaper.IsTrackSelected(track) then
    toggleEnvelopes(track)
  end
end
