# linear-block-code
Linearity: 
If  m1->c1 and m2->c2
then m1⊕m2->c1⊕c2
where m is a k-bit information sequence 
c is an n-bit codeword.

Linear code: The sum of any two code words is a codeword.

Observation: The all-zero sequence is a codeword in every linear block code

Def: The weight of a codeword ci , denoted by w(ci), is the
number of of nonzero elements in the codeword.

Def: The minimum weight of a code, wmin, is the smallest 
weight of the nonzero codewords in the code.

Theorem: In any linear code, dmin = wmin

Systematic codes: Any linear block code can be put in systematic form

The number of codewords is 2k
since there are 2k distinct messages.

The set of vectors {gi} are linearly independent since we must have a set of unique codewords.

These vectors are called basis vectors of the vector space C.

The dimension of this vector space is the number of the basis vector which are k.

Gi є C→ the rows of G are all legal codewords.

An (n,k) block code has code vectors:

d= (d1 d2….dk) and

c= (c1 c2……...cn)

 The block coding process can be written as c=dG
where G is the Generator Matrix
