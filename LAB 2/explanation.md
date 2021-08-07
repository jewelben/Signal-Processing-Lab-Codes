## Q2.2

-   The FS coefficients of the output of the LTI system is
    a<sub>k</sub> H(kw<sub>0</sub>) for the corrosponding values of k of the input signal, where w<sub>0</sub> is the periodic frequency of the input signal.
    
-   The output of the LTI system is periodic when the input signal is
    periodic. 
    
## Q2.2A

-   myLPF(A, w0_FS, wc) is a function that behaves like a low pass filter, i.e., it filters out all frequencies present in the input signal if its absolute value is greater than the cutoff frequency wc.
-    Since a<sub>k</sub> corrosponds to the frequency kw<sub>0</sub>, the function is easily implemented by using a for loop that contains an if condition (abs(k * w0_FS) <= wc). If the condition is satisfied, the corrosponding FS coefficient is equal to the input signal's FS coeffiecient. Else, the corrosponding coefficient is 0. The FS coefficients are stored and returned using a vector B.

## Q2.2B

-   cos(t) can be easily expressed in FS with a<sub>1</sub> = a<sub>-1</sub> = 0.5, and all other terms zero.
- These coefficients are stored in a vector A, which is then inputted into myLPF(), along with w0_FS and wc. The output is then stored in another vector B.
-   Using B (which contains the FS coefficients of the output signal), we reconstruct the output signal using partialfouriersum(B, T, t), which is stored as y, along with the input signal which is stored as x (using partialfouriersum(A, T, t).
-   We then plot all the required signals.
-   For wc = 2, we can observe that all frequencies in the input signal with absolute value > 2 are filtered out (which turns out to be none). So, the output is the same as the input.
-   For wc = 0.5, we can observe that all frequencies in the input signal with absolute value > 0.5 are filtered out (which turns out to be the entire input signal). So, the entire output signal is attenuated to 0.

## Q2.2C

-   myHPF(A, w0_FS, wc) is a function that behaves like a high pass filter, i.e., it filters out all frequencies present in the input signal if its absolute value is less than the cutoff frequency wc.
-    Since a<sub>k</sub> corrosponds to the frequency kw<sub>0</sub>, the function is easily implemented by using a for loop that contains an if condition (abs(k * w0_FS) >= wc). If the condition is satisfied, the corrosponding FS coefficient is equal to the input signal's FS coeffiecient. Else, the corrosponding coefficient is 0. The FS coefficients are stored and returned using a vector B.
-   We follow the same steps as in Q2.2A, using the myHPF() function instead of the myLPF function instead, and plot the required signals.
-   For wc = 2, we can observe that all frequencies in the input signal with absolute value < 2 are filtered out (which turns out to be the entire input signal). So, the entire output signal is attenuated to 0.
-   For wc = 0.5, we can observe that all frequencies in the input signal with absolute value < 0.5 are filtered out (which turns out to be none). So, the output is the same as the input.

## Q2.2D

-   NonIdeal(A, w0_FS, G, a) is a function that behaves like a non-ideal filter. It returns the convoluted FS coeffiecients of the LTI system, where H(W) is G / (a + jW). So, the corrosponding FS coeffiecients of the output signal turn out to be a<sub>k</sub>H(kw<sub>0</sub>) = a<sub>k</sub>G / (a + jkw<sub>0</sub>). The indivual FS coefficients are computed using a for loop present in the function. The output is stored and returned using a vector B.
-   We follow the same steps as in Q2.2A, using the NonIdeal() function instead of the myLPF function instead, and plot the required signals.
-   We observe that the output is a scaled and time shifted version of the input signal.
-   For G = 1 and a = 1, we observe that the output is a scaled down version of the input signal, time shifted to the right by about 0.8 units.

## Q2.2E

-   Here, the input signal is sin(2t) + cos(3t). So, the FS coefficients are a<sub>-3</sub> = a<sub>3</sub> = 0.5, a<sub>-2</sub> = -0.5 / i, a<sub>2</sub> = 0.5 / i, and the rest zero. 
-   Using the same steps as in Q2.2A, we call the functions myLPF(), myHPF() and NonIdeal() for A (vector containing the FS coefficients), and plot the required graphs.
-   For wc = 2.5, we see that the output of the low pass filter is sin(2t) (As cos(3t) is filtered out, 3 > 2.5), and the output of the high pass filter is cos(3t) (As sin(2t) is filtered out, 2 < 2.5).
-   For G = 1 and a = 1, the non-ideal filter produces an output signal which is scaled down and time shifted (to the right by about 0.5 units) of the input signal.
