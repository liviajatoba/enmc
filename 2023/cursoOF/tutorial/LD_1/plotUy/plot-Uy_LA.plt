reset

set terminal postscript eps enhanced color"Times-Roman" 18
set term png


set autoscale
set lmargin 13
set bmargin 4

set output "Fig7b-Uy-LA.png"

set key right
set title "x = 0,0019 m"
set ylabel"{/*1.5{/Italic y(m)}" offset 1,0
set xlabel"{/*1.5{/Italic U_y/U_e } }" offset 0,0
set yrange[-0.05:0]


plot "../caso/postProcessing/sampleUy/188/LA.xy"  using ($3):($1) title "{num}" with lines lt 2 lw 2.5, \
     "../dados/Uy/LA_x_0.0019m.dat"  using ($1):($2) title "{Ref.}" with lines lt 1 lw 2.5



