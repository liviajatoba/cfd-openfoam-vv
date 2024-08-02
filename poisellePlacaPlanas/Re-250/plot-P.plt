reset

#set terminal postscript eps enhanced color"Times-Roman" 18
set term png

set autoscale
set lmargin 13
set bmargin 4

#set output "pressao.eps"
set output "pressao.png"

set key left

set xlabel"{/*1.5{/Italic x (m)}" offset 1,0
set ylabel"{/*1.5{/Italic p (m^2/s^2)} }" offset 0,0

plot "postProcessing/sampleUmax/500/linhaCentral.xy"  using ($1):($5) notitle with lines lt 1 lw 2.5
