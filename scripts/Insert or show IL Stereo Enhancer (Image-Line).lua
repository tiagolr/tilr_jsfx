for i = 0, reaper.GetNumTracks() - 1 do
  track = reaper.GetTrack(0, i)
  if reaper.IsTrackSelected(track) then
    fx = reaper.TrackFX_GetByName(track, 'IL Stereo Enhancer (Image-Line)', false)
    if fx >= 0 then
      isopen = reaper.TrackFX_GetOpen( track, fx )
      reaper.TrackFX_SetOpen(track, fx, not isopen)
    else
      reaper.TrackFX_GetByName(track, 'IL Stereo Enhancer (Image-Line)', true)
    end
  end
end
