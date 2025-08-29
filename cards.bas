1 rem cards
2 rem c.2025 by igp tech blog 
3 rem (isaac garcia peveri)
4 rem
10 v=54296     : rem volume register
20 w=54276     : rem waveform voice 1          
30 a=54277     : rem release voice 1
40 h=54273     : rem voice 1 register
50 y=54283     : rem waveform voice 2
60 z=54284     : rem release voice 2
70 x=54293     : rem filter lo byte
70 c=54294     : rem filer hi byte
100 rem setting the sid
110 poke v,15  : rem maximum volume
120 poke w,129 : rem noise voice 1
121 poke y,17  : rem triangle voice 2
130 poke a,15  : rem adsr voice 1
131 poke z,15  : rem adsr voice 2
133 poke c,04  : rem filer lo
140 poke x,3   : rem filter
141 poke c,6   : rem filter hi 
200 rem playing sound voice 1
230 for x=1 to 2:pokeh,220:next
235 for x=1 to 5:pokew,0:next
337 pokew,129
330 for x=1 to 2:pokeh,120:next
335 for x=1 to 5:pokew,0:next
430 for x=1 to 2:pokeh,220:next
435 for x=1 to 5:pokew,0:next
437 pokew,129
530 for x=1 to 2:pokeh,120:next
535 for x=1 to 5:pokew,0:next
537 pokew,129
630 for x=1 to 2:pokeh,120:next
635 for x=1 to 5:pokew,0:next
637 pokew,129
730 for x=1 to 2:pokeh,120:next
735 for x=1 to 5:pokew,0:next
737 pokew,129
830 for x=1 to 2:pokeh,120:next
835 for x=1 to 5:pokew,0:next
837 pokew,129
930 for x=1 to 2:pokeh,120:next
935 for x=1 to 5:pokew,0:next
937 pokew,129
1000for x=1 to 2:pokeh,120:next
1010for x=1 to 5:pokew,0:next
1020pokew,129
1100for x=1 to 2:pokeh,120:next
1110for x=1 to 5:pokew,0:next
1120pokew,129
1200for x=1 to 2:pokeh,120:next
1210for x=1 to 5:pokew,0:next
1220pokew,129
1300for x=1 to 2:pokeh,120:next
1310for x=1 to 5:pokew,0:next
1320pokew,129
1900 pokew,0: pokey,0
1999 end

