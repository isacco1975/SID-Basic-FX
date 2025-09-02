1   rem realistic fireplace  
2   rem c.2025 by igp tech blog 
3   rem (isaac garcia peveri)
4   rem
10  v0=54296    :rem general volume
20  w1=54276    :rem waveform vox 1
30  w2=54283    :rem waveform vox 2
40  w3=54290    :rem waveform vox 3
50  a1=54277    :rem adsr     vox 1
60  a2=54284    :rem adsr     vox 2
70  a3=54291    :rem adsr     vox 3
80  f1=54273    :rem vox 1 freq 
90  f2=54280    :rem vox 2 freq 
100 f3=54287    :rem vox 3 freq
110 si=54272    :rem sid base reg
120 rem setting the sid
130 poke v0,15  : rem maximum volume
140 poke w1,129 : rem noise   vox 1
150 poke w2,129 : rem noise   vox 2
170 poke a1,00  : rem release vox 1
180 poke a2,09  : rem release vox 2
200 rem fire 
300 i=int(99*rnd(1))+1
310 z=int(155*rnd(1))+1
400 pokef1,i:pokew1,0:pokew1,z:forx=1toz:next
450 pokew2,0:pokew2,17:pokef2,01
500 goto 200
930 poke w1,0:pokew2,0: rem sid off     
999 end

 
