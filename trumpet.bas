1 rem nokiatune (trumpet)
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
125 poke d,255: poke d-1,50: rem duty cycle 
130 poke a,100:pokea+1,15: rem adsr release 
140 poke a+1,255
200 rem playing sound fx
230 for x=1 to 250: poke h,30: next
600 poke w,0  : rem swicth sid off
999 end

