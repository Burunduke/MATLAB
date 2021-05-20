clear,clc
A = readtable('Data_18032020.xlsx');
[vozrast,~,~,~,~,~] = datevec(now - datenum(table2array(A(1:31,3))));
A = readcell('Data_18032020.xlsx');
vozrast = num2cell(vozrast);
a = cellstr("Возраст");
a = ([a;vozrast]);
A = [A,a];%Тут был возраст
D = A(2:32,4:5);%Тут начинается id
Dlina = string(zeros(31,1));
Dlina(:) = "нет";
D( cellfun( @(c) isa(c,'missing'), D ) ) = {'0'};
zxc = "да";
for i = 1:31
    if ischar(cell2mat(D(i,1)))
        if length(cell2mat(D(i,1))) == 11
            Dlina(i) = 'да';
        end
    else 
        
        if strlength(num2str(cell2mat(D(i,1)))) == 11
            Dlina(i) = "да";
        end
    end
    if ischar(cell2mat(D(i,2)))
        if length(cell2mat(D(i,2))) == 11
            Dlina(i) = "да";
        end
    else 
       
        if strlength(num2str(cell2mat(D(i,1)))) == 11
            Dlina(i) = "да";
        end
    end
end
Dlina = num2cell(Dlina);
a = cellstr("id1/id2 длиной 11");
a = ([a;Dlina]);
A = [A,a];%тут закончились id
Vnutr = cell2mat(A(2:32,6));%Полетели авторы
Vvse = cell2mat(A(2:32,7));
K = zeros(31,1);
Znach = K;
for i = 1:31
    K(i) = Vnutr(i)/Vvse(i);
    if K(i) > 0.5
        Znach(i) = 1;
    elseif  ((K(i) > 0.4) & (K(i) <= 0.5))
        Znach(i) = 0.8;
        elseif  K(i) > 0.3 & K(i) <= 0.4
        Znach(i) = 0.6;
        elseif  K(i) > 0.2 & K(i) <= 0.3
        Znach(i) = 0.4;
        elseif  K(i) > 0.1 & K(i) <= 0.2
        Znach(i) = 0.2;
        elseif  K(i) > 0 & K(i) <= 0.1
        Znach(i) = 0.1;
    end
end
Znach = num2cell(Znach);
a = cellstr("Значение коэф.авторов");
a = ([a;Znach]);
A = [A,a];