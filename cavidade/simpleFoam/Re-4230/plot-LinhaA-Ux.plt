reset

set terminal postscript eps enhanced color"Times-Roman" 18
set term png


set autoscale
set lmargin 13
set bmargin 4

set output "LinhaA-Ux.png"

set key center
set title "(a) U_x em x = 0,0033 m"
set ylabel"{/*1.5{/Italic y(m)}" offset 1,0
set xlabel"{/*1.5{/Italic U_x(m/s)} }" offset 0,0
set yrange[-0.05:0]


plot "postProcessing/sampleU/1000/LinhaA.xy"  using ($2):($1) title "{num}" with lines lt 1 lw 2.5, \
     "dados/LA_Ux_0.033m.dat"  using ($1):($2) title "{Ref}" with lines lt 2 lw 2.5



