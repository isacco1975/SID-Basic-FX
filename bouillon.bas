1   rem soup bouillon
2   rem c.2025 by igp tech blog 
3   rem (isaac garcia peveri)
4   rem
10  v0=54296    :rem general volume
20  w1=54276    :rem waveform vox 1
30  w2=54283    :rem waveform vox 2
40  w3=54290    :rem waveform vox 3
50  a1=54277    :rem adsr     vox 1
60  a2=54284    :rem adsr     vox 2
80  f1=54273    :rem vox 1 freq 
90  f2=54280    :rem vox 2 freq 
110 si=54272    :rem sid base reg
120 rem setting the sid
130 poke v0,15  : rem maximum volume
140 poke w1,17  : rem triangl vox 1
150 poke w2,17  : rem triangl vox 2
170 poke a1,03  : rem slow attk  v1
180 poke a2,09  : rem slow attk  v2
200 rem soup 
300 i=int(30*rnd(1))+1
310 z=int(285*rnd(1))+1
400 pokef1,i:pokew1,0:pokew1,17:forx=1toz+50:next
450 pokew2,0:pokew2,17:pokef2,01
500 goto 200
930 poke w1,0:pokew2,0: rem sid off     
999 end

 
