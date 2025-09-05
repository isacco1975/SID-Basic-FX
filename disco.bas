1 rem disco    
2 rem c.2025 by igp tech blog 
3 rem (isaac garcia peveri)
4 rem
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
120 d1=54275    :rem duty cycle vox 1
200 rem setting the sid
300 poke w1,65:poked1,199:poked1-1,0
310 poke w2,129:pokew3,17  
320 poke a1,02:pokea2,03:pokea3,09
330 pokev0,15
400 rem notes
500 forx=1to25:pokef1,07:next:pokew1,0:pokew1,65 
600 forx=1to100:next
700 forx=1to20:pokef2,15:next:pokew2,0:pokew2,129
800 forx=1to020:next
850 i=int(10*rnd(1))+1
900 forx=1to20:pokef3,i:next
910 pokew3,0:pokew3,17
1000forx=1to020:next
1100goto 400
1200 poke w1,0:pokew2,0:pokew3,0: rem voices off                       
9999 end

 
