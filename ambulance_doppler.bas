1 rem italian ambulance doppler
2 rem c.2025 by igp tech blog 
3 rem (isaac garcia peveri)
4 rem
10 v=54296    : rem volume register
20 w=54276    : rem waveform type register
30 a=54277    : rem adsr release register
40 h=54273    : rem voice 1 register
50 l=54272    : rem sid base register 
100 rem setting the sid
110 poke v,15 : rem maximum volume
120 poke w,33 : rem saw waveform
130 poke a,15 : rem adsr release 
200 rem ambulance coming
202 k=0:p=0
204 pokew,33:k=k+1:p=p+1:pokev,p:printp,
210 for x=1 to 100: poke h,55/2: next
220 pokew,0:pokew,33
230 for x=1 to 10: poke h,93/2: next
240 pokew,0:pokew,33
250 for x=1 to 10: poke h,55/2: next
260 pokew,0:pokew,33
270 for x=1 to 02: poke h,93/2: next
280 for x=1 to 110: next
285 pokew,0:pokew,33
290 if k = 2 then 400
295 if p = 15 then 500
300 goto 204
400 for x=1 to 30:pokew,0:k=0:next
410 goto 204
500 rem middle
504 pokew,33:k=k+1:p=p-1:pokev,p:printp,
510 for x=1 to 100: poke h,53/2: next
520 pokew,0:pokew,33
530 for x=1 to 10: poke h,91/2: next
540 pokew,0:pokew,33
550 for x=1 to 10: poke h,53/2: next
560 pokew,0:pokew,33
570 for x=1 to 02: poke h,91/2: next
580 for x=1 to 110: next
585 pokew,0:pokew,33
586 if p=12 then 700
587 goto 504
700 rem going away from observer
702 k=0:p=15
703 p=p-1:ifp<=0then900
704 pokew,33:k=k+1:pokev,p:printp,
710 for x=1 to 100: poke h,50/2: next
720 pokew,0:pokew,33
730 for x=1 to 10: poke h,83/2: next
740 pokew,0:pokew,33
750 for x=1 to 10: poke h,50/2: next
760 pokew,0:pokew,33
770 for x=1 to 02: poke h,83/2: next
780 for x=1 to 110: next
785 pokew,0:pokew,33
800 if k = 2 then 820
810 goto 703
820 for x=1 to 30:pokew,0:k=0:next
830 goto 703
900 poke w,0  : rem swicth sid off
999 end

