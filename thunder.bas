1   rem realistic thunder    
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
125 pokew1,0:pokew2,0:pokew3,0
130 poke v0,15  : rem maximum volume
140 poke w1,129 : rem noise   vox 1
150 poke w2,129 : rem noise   vox 2
160 poke w3,129 : rem noise   vox 3
170 poke a1,01  : rem release vox 1
180 poke a2,01  : rem release vox 2
190 poke a3,01  : rem release vox 3
200 rem thunder beginning fx
205 k=k+1
215 pokew1,129:pokea1,01
220 ix=int(100*rnd(1))+1
230 pokew1,0:forx=1toix:next
240 if k=30 then 500
250 goto 205
500 pokew3,0:pokew3,129:pokea3,15
510 forx=1to050:pokef3,050:next
530 forx=1to020:pokef3,025:next
550 poke f2,100
560 forx=1to300:pokef3,011:next
570 poke f3,030
610 forx=1to3500:pokef2,030:next
630 pokew1,0:pokew2,0:pokew3,0: rem sid off     
999 end

 
