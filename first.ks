*first
@rclick enabled=false
@clickskip enabled=false
@history enabled=false output=false
@playbgm storage="开头菜单曲" loop=true
@position layer=message0 page=back visible=true opacity=0 top=0 height=300 left=0 width=640 marginl=0 margint=0 marginr=0 marginb=0 frame="school"
@current layer=message0 page=back
@er
@locate x=40 y=80
@button normal="opbt1" over="opbt1_1" storage="open.ks" target=*open
@locate x=40 y=160
@button normal="opbt3" over="opbt3_1" storage="load.ks" target=*load
@locate x=500 y=400
@button normal="opbt2" over="opbt2_1" exp="kag.onCloseQuery()"
@locate x=150 y=0
@button normal="logo" over="logo" 
@trans method=crossfade time=800
@wt
@s



