1 rem alternate current
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
130 poke a,0  : rem adsr release 
200 rem playing sound fx
300 for i=00to255 step .1
310 pokew,0:pokew,129:pokeh,i
320 next i
500 go to 100
600 poke w,0  : rem swicth sid off
999 end

