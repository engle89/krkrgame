*rclick

@locksnapshot
@position layer=message1 page=back left=0 top=0 frame="rclick" visible=true
@current layer=message1 page=back
@er
@nowait
@deffont size=30
@defstyle linespacing=10 pitch=0 linesize=4
@locate x=200 y=80
@link storage="save.ks" target=*save
save
@endlink
@locate x=200 y=120
@link storage="load.ks" target=*load
load
@endlink
@endnowait
@trans method=crossfade time=800
@wt
@rclick jump=true target=*drclick enabled=true
@s

*drclick
@position layer=message1 page=back visible=false
@current page=back layer=message1
@ct
@trans method=crossfade time=800
@wt
@rclick call=true target=*rclick enabled=true
@unlocksnapshot
@return

