1 rem italian ambulance
2 rem c.2025 by igp tech blog 
3 rem (isaac garcia peveri)
4 rem
10 v=54296    : rem volume register
20 w=54276    : rem waveform type register
30 a=54277    : rem adsr release register
40 h=54273    : rem voice 1 register
50 l=54272    : rem sid base register 
100 rem setting the sid
110 poke v,15 : rem maximum volume
120 poke w,33 : rem saw waveform
130 poke a,15 : rem adsr release 
200 rem playing sound fx
202 k=0
204 pokew,33:k=k+1
210 for x=1 to 180: poke h,55: next
220 pokew,0:pokew,33
230 for x=1 to 20: poke h,95: next
240 pokew,0:pokew,33
250 for x=1 to 20: poke h,55: next
260 pokew,0:pokew,33
270 for x=1 to 05: poke h,95: next
280 for x=1 to 110: next
285 pokew,0:pokew,33
290 if k = 2 then 400
300 goto 204
400 for x=1 to 30:pokew,0:k=0:next
410 goto 204
310 poke w,0  : swicth sid off
999 end

