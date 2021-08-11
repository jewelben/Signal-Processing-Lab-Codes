# Instructions

**Instructions to run in the MATLAB code**
<br>

## 1. Clone the repo onto your local machine
```
git clone https://github.com/Signal-Processing-2021/lab-2-37.git
```
## 2. Navigate to the Code folder
```
cd lab-2-37\Code
```
## 3. Execute the code 
<br>

# Observations

## Q2.1

## Q2.1B

-  Fourier Transformation of a rectangular pulse gives us a sinc wave which has no imaginary part. Since the real part is fluctuating continuous the angle also  keeps   fluctuating continuously between 0 and pi, but doesn't take any value in between.

## Q2.1C

- If we have a function X(at), then time scaling gives us

                            [(1 / |a|) * x(w / a)] 

Thus, if we shrink X(t) then x(w) will expand and will be scaled down. If we expand X(t) then x(w) will shrink and will be scaled up.

- When T=1, FT=(1/2)*X(w/2)
- When T=4 , FT=2X(2w)       

## Q2.1D

- The expected FT of exp(j * t) and cos(t) is 2sin((w-1)π)/(w-1) and  2wsin(πw)/(1 - w^2). The shapes that we observe are sinc function shifted  to the right by 1 and an interference of 2 sinc functions shifted by 1 & -1 respectively. We can relate the two graphs as we know that cos(t) = (e^(jt) + e^(-jt))/2.

- The fourier transform would have been an impulse pulse graph if it was a periodic cosine function and we integrate from -inf to inf , but since there are constraints on the function where x(t) =
```
                       cos(t)  ,|t| <= π
                       0     , |t| > π
```
this results in a sinc function.

- When xt= e^(jt), Ft=(2/(w-1)) * sin((w-1)π) 
- When xt= cos(t), Ft=(2w/(1-w^2)) * sin(w*π)

## Q2.1E

- We expect the fourier transform of triangular pulse to be sinc squared function, as convulation in time is multiplication in frequency, hence squared. Geometrically we can write it as [1 - abs(t)] ,where |t|<= 1
-  The Fourier transform of the triangular function is the sinc function squared, also equal to 4(sin(w/2)^2)/(w^2).

## Q2.2

-   The FS coefficients of the output of the LTI system is
    a<sub>k</sub> H(kw<sub>0</sub>) for the corresponding values of k of the input signal, where w<sub>0</sub> is the periodic frequency of the input signal.
    
-   The output of the LTI system is periodic when the input signal is
    periodic. 
    
## Q2.2A

-   myLPF(A, w0_FS, wc) is a function that behaves like a low pass filter, i.e., it filters out all frequencies present in the input signal if its absolute value is greater than the cutoff frequency wc.
-    Since a<sub>k</sub> corrosponds to the frequency kw<sub>0</sub>, the function is easily implemented by using a for loop that contains an if condition (abs(k * w0_FS) <= wc). If the condition is satisfied, the corresponding FS coefficient is equal to the input signal's FS coeffiecient. Else, the corresponding coefficient is 0. The FS coefficients are stored and returned using a vector B.

## Q2.2B

-   cos(t) can be easily expressed in FS with a<sub>1</sub> = a<sub>-1</sub> = 0.5, and all other terms zero.
- These coefficients are stored in a vector A, which is then inputted into myLPF(), along with w0_FS and wc. The output is then stored in another vector B.
-   Using B (which contains the FS coefficients of the output signal), we reconstruct the output signal using partialfouriersum(B, T, t), which is stored as y, along with the input signal which is stored as x (using partialfouriersum(A, T, t).
-   We then plot all the required signals.
-   For wc = 2, we can observe that all frequencies in the input signal with absolute value > 2 are filtered out (which turns out to be none). So, the output is the same as the input.
-   For wc = 0.5, we can observe that all frequencies in the input signal with absolute value > 0.5 are filtered out (which turns out to be the entire input signal). So, the entire output signal is attenuated to 0.

## Q2.2C

-   myHPF(A, w0_FS, wc) is a function that behaves like a high pass filter, i.e., it filters out all frequencies present in the input signal if its absolute value is less than the cutoff frequency wc.
-    Since a<sub>k</sub> corrosponds to the frequency kw<sub>0</sub>, the function is easily implemented by using a for loop that contains an if condition (abs(k * w0_FS) >= wc). If the condition is satisfied, the corresponding FS coefficient is equal to the input signal's FS coeffiecient. Else, the corresponding coefficient is 0. The FS coefficients are stored and returned using a vector B.
-   We follow the same steps as in Q2.2A, using the myHPF() function instead of the myLPF function instead, and plot the required signals.
-   For wc = 2, we can observe that all frequencies in the input signal with absolute value < 2 are filtered out (which turns out to be the entire input signal). So, the entire output signal is attenuated to 0.
-   For wc = 0.5, we can observe that all frequencies in the input signal with absolute value < 0.5 are filtered out (which turns out to be none). So, the output is the same as the input.

## Q2.2D

-   NonIdeal(A, w0_FS, G, a) is a function that behaves like a non-ideal filter. It returns the convoluted FS coeffiecients of the LTI system, where H(W) is G / (a + jW). So, the corresponding FS coeffiecients of the output signal turn out to be a<sub>k</sub>H(kw<sub>0</sub>) = a<sub>k</sub>G / (a + jkw<sub>0</sub>). The indivual FS coefficients are computed using a for loop present in the function. The output is stored and returned using a vector B.
-   We follow the same steps as in Q2.2A, using the NonIdeal() function instead of the myLPF function instead, and plot the required signals.
-   We observe that the output is a scaled and time shifted version of the input signal.
-   For G = 1 and a = 1, we observe that the output is a scaled down version of the input signal, time shifted to the right by about 0.8 units.

## Q2.2E

-   Here, the input signal is sin(2t) + cos(3t). So, the FS coefficients are a<sub>-3</sub> = a<sub>3</sub> = 0.5, a<sub>-2</sub> = -0.5 / i, a<sub>2</sub> = 0.5 / i, and the rest zero. 
-   Using the same steps as in Q2.2A, we call the functions myLPF(), myHPF() and NonIdeal() for A (vector containing the FS coefficients), and plot the required graphs.
-   For wc = 2.5, we see that the output of the low pass filter is sin(2t) (As cos(3t) is filtered out, 3 > 2.5), and the output of the high pass filter is cos(3t) (As sin(2t) is filtered out, 2 < 2.5).
-   For G = 1 and a = 1, the non-ideal filter produces an output signal which is scaled down and time shifted (to the right by about 0.5 units) of the input signal.
