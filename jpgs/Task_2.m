clear,clc
files_count = 1;
files = ['fileExcel.xlsx'];
sheets = [1];
FioRange = ['A2:A6'];
RoleRange = ['B2:B6'];
Fio1 = [];
Role1 = [];
for j = 1:files_count
    for k = 1:sheets(j)
        [~, Fio0, ~] = xlsread(files(j,:),sheets(k),FioRange);
        Fio1 = [Fio1 string(Fio0)];
        [~, Role0, ~] = xlsread(files(j,:),sheets(k),RoleRange);
        Role1 = [Role1 string(Role0)];
    end
end
Role = unique(Role1);
s = size(Role);
Fio = string(zeros(s(1),1));
Fio(:,1) = "";
for i = 1:size(Fio1)
    for j = 1:size(Role)
        if Role1(i) == Role(j)
            Fio(i) = strcat(Fio(1),Fio1(i),"; ");
        end
    end
end
writematrix([["Роли","Люди"];],'outFile.xlsx');
for i = size(Role)
    writematrix([[Role(i),Fio(i,1)];]);
end