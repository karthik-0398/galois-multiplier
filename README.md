# galois-multiplier
Galois field GF[2^3] multiplier

In order to design a circuit to multiply two elements of GF(2^3) , and by assuming that the circuit has two three bits inputs (Input A, Input B) and one three bits output (Output Y). The following equation can be concluded: Output (Y) = Input(A) * Input (B)  =>  (  A[0]A[1]A[2]  )*(  B[0]B[1]B[2] )  => (A[0]x^2 + A[1]x + A[2]) (B[0]x^2 + B[1]x + B[2]) Y[0] = (A[2] . B[2]) + (A[2] . B[1]) + (A[1] . B[2]) + (A[0] . B[0])  Y[1] = (A[2] . B[2]) + (A[1] . B[0]) + (A[0] . B[1])  Y[2] = (A[2] . B[2]) + (A[2] . B[1]) + (A[1] . B[2]) + (A[2] . B[0]) + (A[1] . B[1]) + (A[0] . B[2])   Therefore, the circuit could be designed by using Xor gate for each addition and And gate for each multiplication for the last equation obtained.  
The elements of GF(2^3) are remainders over the irreducible polynomial x^3 +x^2 +1 contains all polynomials of degree less than 3.
The following image shows the testbench simulation in Modelsim.
![Image of simulation](https://github.com/ks6n19/galois-multiplier/blob/master/galois_multiplier%20testbench.PNG)
