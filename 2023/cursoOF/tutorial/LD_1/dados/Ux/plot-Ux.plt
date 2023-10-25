reset

set terminal postscript eps enhanced color"Times-Roman" 18
set term png


set autoscale
set lmargin 13
set bmargin 4

set output "Fig7b.png"

set key center

set ylabel"{/*1.5{/Italic y(m)}" offset 1,0
set xlabel"{/*1.5{/Italic U_x/U_e } }" offset 0,0


plot "LA_x_0.0019m.dat"  using ($1):($2) title"{x=0.0019}" with lines lt 3 lw 2.5, \
     "LB_x_0.017m.dat"  using ($1):($2) title"{x=0.017}" with lines lt 2 lw 2.5, \
     "LC_x_0.033m.dat"  using ($1):($2) title"{x=0.033}" with lines lt 4 lw 2.5, \
     "LD_x_0.048m.dat"  using ($1):($2) title"{x=0.048}" with lines lt 1 lw 2.5



