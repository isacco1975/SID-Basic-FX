1 rem mario coin
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
120 poke w,17 : rem triangle waveform
130 poke a,09 : rem adsr release 
200 rem playing sound fx
210 for x=1 to 20: poke h,120: next
130 poke a,08 : rem adsr release 
210 for x=1 to 80: poke h,160: next
220 poke w,0  : swicth sid off
999 end

 