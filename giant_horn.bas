1   rem giant horn
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
120 d1=54275    :rem duty cycle hi v1
130 d2=54274    :rem duty cycle lo v1
140 d3=54282    :rem duty cycle hi v2
150 d4=54281    :rem duty cycle lo v2
200 rem setting the sid
210 pokew1,0:pokew2,0:pokew3,0
220 poke v0,15  : rem maximum volume
230 poke w1,065 : rem pulse   vox 1
240 poke w2,065 : rem pulse   vox 2
250 poke w3,129  : rem noise   vox 3
260 poke a1,15  : rem release vox 1
270 poke a2,15  : rem release vox 2
280 poke a3,150 : rem release vox 3
290 poke d1,41:poked2,14
300 poke d3,67:poked4,98
400 rem thunder beginning fx
410 k=0:z=0
420 k=k+1:z=z+1
430 poke f1,k
445 k=k+2
450 poke f2,k
455 forx=1to10:next
460 rem print z 
470 if k>60 then k=60
480 if z>50 then 600
490 pokef1,k+2:pokef2,k+6
500 goto 420
600 k=k-1:z=z-1
605 if k<=0 then k=0
610 poke f1,k:k=k-2
615 if k<=0 then k=0
620 pokef2,k
630 if z=0 then 999
640 forx=1to10:next
700 goto 600
999 pokew1,0:pokew2,0:pokew3,0: rem sid off
1000 end
