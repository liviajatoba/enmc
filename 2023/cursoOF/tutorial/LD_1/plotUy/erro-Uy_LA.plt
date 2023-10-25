reset

set terminal postscript eps enhanced color"Times-Roman" 18
set term png


set autoscale
set lmargin 13
set bmargin 4

set output "erro-Uy-LA.png"

set title "x = 0,0019 m"
set key bottom
set ylabel"{/*1.5{/Italic y(m)}" offset 1,0
set xlabel"{/*1.5{/Italic |U_y|_{ref} - |U_y|  } }" offset 0,0
set yrange[-0.05:0]


plot "<paste ../dados/Uy/LA_x_0.0019m.dat ../caso/postProcessing/sampleUy/188/LA.xy"  using (abs($1)-abs($5)):($3) title "{num}" with lines lt 2 lw 2.5
