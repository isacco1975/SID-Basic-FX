1   rem lazer barrier
2   rem c.2025 by igp tech blog 
3   rem (isaac garcia peveri)
4   rem
10  v0=54296    :rem general volume
20  w1=54276    :rem waveform vox 1
50  a1=54277    :rem adsr     vox 1
80  f1=54273    :rem vox 1 freq 
110 si=54272    :rem sid base reg
120 rem setting the sid
130 poke v0,15  : rem maximum volume
140 poke w1,17  : rem triangl vox 1
170 poke a1,00  : rem slow attk  v1
200 rem time to laugh
300 for i=200 to 1 step -5
310 pokef1,i:pokew1,0:pokew1,17
340 nexti
550 goto 200
930 poke w1,0:pokew2,0: rem sid off     
999 end

 
