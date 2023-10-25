reset

set terminal postscript eps enhanced color"Times-Roman" 18
set term png


set autoscale
set lmargin 13
set bmargin 4

set output "erro-Ux-LC.png"

set title "x = 0,033 m"
set key bottom
set ylabel"{/*1.5{/Italic y(m)}" offset 1,0
set xlabel"{/*1.5{/Italic |U_x|_{ref} - |U_x|  } }" offset 0,0
set yrange[-0.05:0]




plot "<paste ../dados/Ux/LC_x_0.033m.dat ../caso/postProcessing/sampleUx/188/LC.xy"  using (abs($1)-abs($4)):($3) title "{num}" with lines lt 2 lw 2.5


