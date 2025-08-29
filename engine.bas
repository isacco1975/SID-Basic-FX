1 rem engine    
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
120 poke w,129 : rem noise waveform
130 poke a,15  : rem adsr release 
200 rem playing sound fx
201 rem
210 for x=1 to 05: poke h,200: next
215 poke v,0     : rem volume off                       
216 for x=1 to 10: next
217 poke v,15    : rem volume on
301 rem
310 for x=1 to 05: poke h,180: next
315 poke v,0     : rem volume off                       
316 for x=1 to 10: next
317 poke v,15    : rem volume on
401 rem
410 for x=1 to 05: poke h,160: next
415 poke v,0     : rem volume off                       
416 for x=1 to 10: next
417 poke v,15    : rem volume on
501 rem
510 for x=1 to 05: poke h,140: next
515 poke v,0     : rem volume off                       
516 for x=1 to 10: next
517 poke v,15    : rem volume on
601 rem
610 for x=1 to 05: poke h,120: next
615 poke v,0     : rem volume off                       
616 for x=1 to 10: next
617 poke v,15    : rem volume on
701 rem
710 for x=1 to 05: poke h,100: next
715 poke v,0     : rem volume off                       
716 for x=1 to 10: next
717 poke v,15    : rem volume on
801 rem
810 for x=1 to 05: poke h,080: next
815 poke v,0     : rem volume off                       
816 for x=1 to 10: next
817 poke v,15    : rem volume on
901 rem
910 for x=1 to 05: poke h,060: next
915 poke v,0     : rem volume off                       
916 for x=1 to 10: next
917 poke v,15    : rem volume on
1001 rem
1010 for x=1 to 05: poke h,040: next
1015 poke v,0     : rem volume off                       
1016 for x=1 to 10: next
1017 poke v,15    : rem volume on
1101 rem
1110 for x=1 to 05: poke h,020: next
1115 poke v,0     : rem volume off                       
1116 for x=1 to 10: next
1117 poke v,15    : rem volume on
2800 rem
2850 go to 200
2900 poke w,0    : rem swicth sid off
2999 end


 
