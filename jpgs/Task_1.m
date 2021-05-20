clear,clc
files = ['fileExcel.xlsx'];
FioRange = 'A2:A6';
RoleRange = 'B2:B6';
[~, Fio0, ~] = xlsread(files,FioRange);
Fio0 = string(Fio0);
[~, Role0, ~] = xlsread(files,RoleRange);
Role0 = string(Role0);
Fio = string([' ';' ']);
Role = string([' ';' ']);
Ruk = "Руководитель";
for i = 1:5
    Ruk0 = Role0(i);
    if Ruk0 == Ruk
        Fio(1) = strcat(Fio(1),Fio0(i),"; ");
    else
        Fio(2) = strcat(Fio(2),Fio0(i),"; ");
    end
end
writematrix([["Роли","Люди"];["Руководитель",Fio(1,1)];["Исполнитель",Fio(2,1)]],'outFile.xlsx');