a = fopen('my_file.txt','w');
Mat1 = rand(3);
for i = 1:3
    for j = 1:3
        fprintf(a,'%.4f  ', Mat1(i,j));
    end
    fprintf(a,'\n');
end
fclose(a);
    