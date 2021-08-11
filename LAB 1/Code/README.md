# Instructions

**Instructions to run in the MATLAB code**
<br>

## 1. Clone the repo onto your local machine
```
git clone https://github.com/Signal-Processing-2021/lab-1-37.git
```
## 2. Navigate to the Code folder
```
cd lab-1-37\Code
```
## 3. Execute the code 
<br>

# Observations

## Q1

### Verifying the fourier coefficients

- x(t) = 2 cos(2πt) + cos(6πt)
-  Using Euler's formula for cos(w<sub>o</sub>t)=(e<sup>w<sub>o</sub>t</sup>+e<sup>-w<sub>o</sub>t</sup>)/2
-Fourier Series
  x(t) = 0e<sup>j(-5)2πt</sup> + 0e<sup>j(-4)2πt</sup> + 0.5e<sup>j(-3)2πt</sup> + 0e<sup>j(-2)2πt</sup> + 1e<sup>j(-1)2πt</sup> + 0e<sup>j(0)2πt</sup> + 1e<sup>j(1)2πt</sup> + 0e<sup>j(2)2πt</sup> + 0.5e<sup>j(3)2πt</sup> + 0e<sup>j(4)2πt</sup> + 0e<sup>j(5)2πt</sup>
- The fourier coefficients we got
{ a<sub>-5</sub> = 0, a<sub>-4</sub> = 0, a<sub>-3</sub> = 0.5, a<sub>-2</sub> = 0, a<sub>-1</sub> = 1, a<sub>0</sub> = 0, a<sub>1</sub> = 1, a<sub>2</sub> = 0, a<sub>3</sub> = 0.5, a<sub>4</sub> = 0, a<sub>5</sub> = 0 }
- We can observe that the coefficients obtained from the graph match with the ones we have calculated manually.

## Q3a

1. We could observer is that the give square wave is an even function i.e  
x(t)=x(-t)
2. A similar square wave was given in question 1.1(b) and while finishing the fourier coefficients , we could conclude that the coefficients were purely real.


## Q3b

When T tends to infinity , the original square wave approaches a rectangular pulse.The graph of the fourier coefficients multiplied by T (Ta<sub>k</sub>), the graph looks like the envelope function as T tends to infinity, graph becomes more and more dense(fourier series tends to fourier transform).

## Q3c

Here the plot is similar to a square wave, one interesting observation we can make here is as the value of N increases,the graph looks more like a square wave so one can conclude that as N increases the graphs becomes more accurate.

## Q4a

We have observed that this is an even function x(t)=|t| as we found out that the fourier coefficient are purely real and this can be show in the plot of the coefficients (also by plotting the imaginary part), also displayed on the console.

## Q4b

We have concluded that this is an odd function as x(t)=t, as we can see that the fourier coefficients are purely imaginary which can be observed through plotting imaginary and the real parts of the fourier coefficients. 

## Q4c
We know that a coefficient in Fourier series expansion is,<img src="https://render.githubusercontent.com/render/math?math=\displaystyle x(t)=\frac{a_0}{2}%2B\sum_{n=1}^{\infty}a_n\cos(n\omega_0 t)%2Bb_n\sin(n\omega_0 t)">

Also, by Euler's formula<img src="https://render.githubusercontent.com/render/math?math=\displaystyle \cos(\phi)=\frac{e^{i\phi}%2Be^{-i\phi}}{2}, \sin(\phi)=\frac{e^{i\phi}-e^{-i\phi}}{2i}"></p>

We know that **cos** is an even function while **sin** is an odd function.

So, on replacing **cosine** and **sinusoidal** with their Euler's formula representation, we see that the real part of fourier series of **x(t)** is represented by the **cosine** part and imaginary part by **sinusoidal** part.

We also know that, when the function itself is even, all **sinusoidal** coefficients are 0 (as the odd part doesn't exist), and when function is odd, all **cosine** coefficients are 0 (as the even part doesn't exist).

Thus we can conclude that,
- If function is even, then the Fourier coefficients will be purely real.
- If function is odd, then the Fourier coefficients will be purely imaginary.