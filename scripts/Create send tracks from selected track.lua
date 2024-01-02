local ret, numsends = reaper.GetUserInputs('Create sends', 1, "Number of sends", "4")
if not ret then return end
numsends = tonumber(numsends) or 4

function addSends(itrack, src)
  reaper.SetMediaTrackInfo_Value(src, 'I_NCHAN', (numsends + 1) * 2)

  for i = 1, numsends do
    reaper.InsertTrackAtIndex(itrack + i, 1)
    dst = reaper.GetTrack(0, itrack + i)
    reaper.CreateTrackSend(src, dst)
    reaper.GetSetMediaTrackInfo_String(dst, "P_NAME", "Send "..i, true)
    reaper.SetTrackSendInfo_Value(src, 0, i-1, "I_SRCCHAN", 2*i)
  end
end

for i = 0, reaper.GetNumTracks() - 1 do
  local track = reaper.GetTrack(0, i)
  if reaper.IsTrackSelected(track) then
    addSends(i, track)
  end
end