*save

@position layer=message1 page=back left=0 top=0 width=640 height=480 frame="save" visible=true 

*save0
@current page=back layer=message1
@er
@nowait
@deffont size=30
@locate x=10 y=0
save
@locate x=10 y=35
@button normal=&(kag.getBookMarkFileNameAtNum(0))  cond="kag.bookMarkDates[0] != void"  
@button normal="nodata" cond="kag.bookMarkDates[0] == void"
@locate x=180 y=50
@link target=*savedata0
@emb exp="kag.bookMarkDates[0]" cond="kag.bookMarkDates[0] != void"
@emb exp=""--------------"" cond="kag.bookMarkDates[0] == void"
@endlink

@locate x=10 y=180
@button normal=&(kag.getBookMarkFileNameAtNum(1)) cond="kag.bookMarkDates[1] != void"
@button normal="nodata" cond="kag.bookMarkDates[1] == void"
@locate x=180 y=200
@link target=*savedata1
@emb exp="kag.bookMarkDates[1]" cond="kag.bookMarkDates[1] != void"
@emb exp=""--------------"" cond="kag.bookMarkDates[1] == void"
@endlink
@endnowait
@trans method=crossfade time=800
@wt
@rclick jump=true target=*drclick enabled=true
@s

*savedata0
@save place=0 ask=true
@jump target=*save0

*savedata1
@save place=1 ask=true
@jump target=*save0


