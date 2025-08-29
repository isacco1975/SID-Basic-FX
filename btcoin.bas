1 rem black tiger coin    
2 rem c.2025 by igp tech blog 
3 rem (isaac garcia peveri)
4 rem
10 v=54296     : rem volume register
20 w=54276     : rem waveform type register
30 a=54277     : rem adsr release register
40 h=54273     : rem voice 1 register
50 l=54272     : rem sid base register 
100 rem setting the sid
110 poke v,15  : rem maximum volume
120 poke w,17  : rem triangle waveform
130 poke a,15  : rem adsr release 
200 rem playing sound fx
201 rem
210 for x=1 to 18: poke h,45: next
215 poke v,0     : rem volume off                       
216 for x=1 to 10: next
217 poke v,15    : rem volume on
301 rem
310 for x=1 to 18: poke h,50: next
315 poke v,0     : rem volume off                       
316 for x=1 to 10: next
317 poke v,15    : rem volume on
401 rem
410 for x=1 to 20: poke h,165: next
415 poke v,0     : rem volume off                       
416 for x=1 to 10: next
417 poke v,15    : rem volume on
2900 poke w,0    : rem swicth sid off
2999 end


 
