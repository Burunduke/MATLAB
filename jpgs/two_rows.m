function massive1 = two_rows(A)
n = ndims(A);
if (2 == n) && (size(A,1) == 2)
    massive1 = A;
else 
    disp('массив должен быть двумерным и иметь две строки!');
    massive1 = A.*0;
end
