
# from eqn 4.19 Incropera 7th Edn, pg 234
L = 0.5
H = 1
#sss(x,y,n) = ( (-1)**(n+1) + 1.)/n  * sin(n*pi*x/L) * sinh(n*pi*y/L) / sinh(n*pi*H/L)
#nmax = 21
#theta(x,y) = 2/pi *( sum [n=1:nmax] sss(x,y,n))


sss(x,y,m) =  2./(2*m+1)  * sin((2*m+1)*pi*x/L) * sinh((2*m+1)*pi*y/L) / sinh((2*m+1)*pi*H/L)

mmax = 4
theta(x,y) = 2/pi *( sum [m=0:mmax] sss(x,y,m))




set xr [0:H]

# symbol ids for pdfcairo (using gnuplot test)
_fcirc = 7 # filled circle

set xlabel 'y'
set ylabel 'T'

set key Left reverse


plot 'yT.tsv' u 5:1 ev 30 w p pt _fcirc t 'Numerical', theta(L/2.,x) t 'Eq. 4.19'







