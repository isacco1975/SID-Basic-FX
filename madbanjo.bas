1 rem mad banjo band
2 rem c.2025 by igp tech blog 
3 rem (isaac garcia peveri)
4 rem
10 v=54296    : rem volume register
20 w=54276    : rem waveform type register
30 a=54277    : rem adsr release register
40 h=54273    : rem voice 1 register
50 l=54272    : rem sid base register 
60 d=54275    : rem duty cycle vox1 hi
100 rem setting the sid
110 poke v,15 : rem maximum volume
120 poke w,65 : rem saw waveform
125 poke d,255:poke d-1,10: rem duty cycle 
130 poke a,06 : rem adsr release 
200 rem playing sound fx
300 i=int(50*rnd(1))+1
305 if i<15 then i=15
310 if i>50 then i=50
330 for x=1 to 20: poke h,i: next
440 pokew,0:pokew,65       
450 goto 200
600 poke w,0  : rem swicth sid off
999 end

