# Cussen's Algorithm 
## Cussen's Algorithm is an algorithm which can be used to multiply a scalar multiplier with an array
## It involves 5 major steps
 1. <i>Sort</i>: Begin by sorting the given vector [v1,...,vn] in
 a way that eliminates duplicates. The resulting sorted
 vector [s1,...,sm] has s1 < s2 < ··· < sm. It is
 necessary to create an array of pointers [p1,...,pn],
 where pi gives the unique value j such that vi = sj.
 These pointers are suggested by the red, dotted lines
 in Fig. 1.2
 2. Differences: Construct a new vector [d1,...,dm] giv
ing the differences between successive elements of the
 sorted array, with an imaginary 0 preceding the first
 number, That is, d1 = s1 and di = si − si−1 for
 i =2,3,...,m.
 3. Recursion: Either by using Russian-Peasants multi
plication as a base case, or using this algorithm recur
sively, produce the vector-scalar product [cd1,...,cdm].
 4. Accumulate: Compute the product of c and the vector
 [s1, . . . , sm] by cs1 = cd1 and csi = csi−1 + cdi for
 i = 2,3,...,m. Note that we use m − 1 additions
 here, and it is the only place, other than the recursive
 step, where additions are used.
 5. Follow Pointers: For each vi, the pointer pi is that
 j such that vi = sj. Therefore, cpi = csj. We may
 therefore copy the value csj just computed at the pre
vious step and make that be cpi.
