% Given P Matrix
 P = input('Input P matrix: ');
 [k,m] = size(P);
 n=k+m;
 % Creating a Identity matrix of size m x m
 I1 = eye(m);
 % % Taking the P Matrix Transpose
 L= P';
 % Generating H Matrix
 H = [L I1]
 % Creating a Identity matrix of size K x K
 I2 = eye(k);
 % Making a k x n Matrix
 G = [I2 P]
 % Generate U data vector, denoting all information sequences
 no = 2 ^ k
 % Iterate through an Unit-Spaced Vector
 for i = 1 : 2^k
 % Iterate through Vector with Specified Increment
 % or in simple words here we are decrementing 4 till we get 1 
 for j = k : -1 : 1
 if rem(i - 1, 2 ^ (-j + k + 1)) >= 2 ^ (-j + k)
 u(i, j) = 1;
 else
 u(i, j) = 0;
 end
 % To avoid displaying each iteration/loop value
 echo off;
 end
 end
 % Generate CodeWords
 c = rem(u * G, 2)
 % Encoding a codeword
 index1 = input('Enter the index of the code word to be encoded: ');
 r=c(index1,:);
 index2 = input('Enter the index of the bit to be encoded: ');
 r(index2)=~r(index2);
 p = [G(:, n - k + 2 : n)];
 % Given Received codeword
 %r = input('Input r matrix: ');
 %r
 p = [G(:, n - k + 2 : n)];
 %Find Syndrome
 ht = transpose(H)
 s = rem(r * ht, 2)
 for i = 1 : 1 : size(ht)
 if(ht(i,1:m)==s)
 r(i) = 1-r(i);
 break;
 end
 end
 disp('The Error is in bit:')
 disp(i)
 disp('The Corrected Codeword is :')
 disp(r)
