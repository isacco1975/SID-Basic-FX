1   rem fireman siren
2   rem c.2025 by igp tech blog 
3   rem (isaac garcia peveri)
4   rem
10  v0=54296    :rem general volume
20  w1=54276    :rem waveform vox 1
50  a1=54277    :rem adsr     vox 1
80  f1=54273    :rem vox 1 freq 
110 si=54272    :rem sid base reg
200 rem setting the sid
210 pokew1,0
220 poke v0,15  : rem maximum volume
230 poke w1,33  : rem saw vox 1
260 poke a1,55  : rem release vox 1
270 poke a1+1,200: rem sustain vox1
400 rem fireman siren      
410 forx=1to99:pokef1,40:next
420 forx=1to99:pokef1,30:next
430 goto400
999 pokew1,0:pokew2,0:pokew3,0: rem sid off
1000 end

