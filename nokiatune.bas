1 rem nokia tune
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
230 for x=1 to 25: poke h,96: next
240 pokew,0:pokew,33
250 for x=1 to 25: poke h,85: next
260 pokew,0:pokew,33
270 for x=1 to 60: poke h,54: next
280 pokew,0:pokew,33
290 for x=1 to 60: poke h,61: next
300 pokew,0:pokew,33
310 for x=1 to 25: poke h,81: next
320 pokew,0:pokew,33
330 for x=1 to 25: poke h,73: next
340 pokew,0:pokew,33
350 for x=1 to 60: poke h,43: next
360 pokew,0:pokew,33
370 for x=1 to 60: poke h,49: next
380 pokew,0:pokew,33
390 for x=1 to 25: poke h,73: next
400 pokew,0:pokew,33
410 for x=1 to 25: poke h,65: next
420 pokew,0:pokew,33
430 for x=1 to 65: poke h,41: next
440 pokew,0:pokew,33
450 for x=1 to 65: poke h,49: next
460 pokew,0:pokew,33
470 for x=1 to 80: poke h,65: next
480 pokew,0:pokew,33
600 poke w,0  : rem swicth sid off
999 end

