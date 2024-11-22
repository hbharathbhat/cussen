# Cussen's Algorithm 
## Cussen's Algorithm is an algorithm which can be used to multiply a scalar multiplier with an array
## It involves 5 major steps
 1. <i>Sort</i>: Begin by sorting the given vector [v1,...,vn] in a way that eliminates duplicates. The resulting sorted vector [s1,...,sm] has s1 < s2 < ··· < sm. It is necessary to create an array of pointers [p1,...,pn], where pi gives the unique value j such that vi = sj. These pointers are suggested by the red, dotted lines in Figure
 2. <i>Differences</i>: Construct a new vector [d1,...,dm] giving the differences between successive elements of the sorted array, with an imaginary 0 preceding the first number, That is, d1 = s1 and di = si − si−1 for i =2,3,...,m.
    
 3. <i>Recursion</i>: Either by using Russian-Peasants multiplication as a base case, or using this algorithm recursively, produce the vector-scalar product [cd1,...,cdm].
 4. <i>Accumulate</i>: Compute the product of c and the vector[s1, . . . , sm] by cs1 = cd1 and csi = csi−1 + cdi for i = 2,3,...,m. Note that we use m − 1 additions here, and it is the only place, other than the recursive step, where additions are used.
 5. <i>Follow Pointers</i>: For each vi, the pointer pi is that j such that vi = sj. Therefore, cpi = csj. We may therefore copy the value csj just computed at the previous step and make that be cpi.

![image](https://github.com/user-attachments/assets/c75a5812-cd48-4997-8ae5-1abe1dc84dbb)

## Hardware Implementation of Cussen's Algorithm
#### Top Module cussen_repeat
#### You can get all the waveforms<a href="https://drive.google.com/drive/folders/1k_dYr3Eky9psMXh8bcZAQHAEZvKppR9T?usp=sharing"> here</a>
### Synthesis Results (synthesized on Xilinx Vivado)
![cussen](https://github.com/user-attachments/assets/be1fca00-e59b-4495-9062-23f0232a96dd)
### Block Diagram
![image](https://github.com/user-attachments/assets/55c945ad-c6f7-4e1b-9c39-e14ba9113dd6)
![image](https://github.com/user-attachments/assets/20946bb3-24b8-417c-ad71-56b1c53c0c55)
![image](https://github.com/user-attachments/assets/40150c98-61d3-413b-8f57-23ccf36dd2e4)
![image](https://github.com/user-attachments/assets/5b953a58-4a36-4581-a249-49f1fafc8198)

