dname = uigetdir();
Filelist=struct2table(dir(dname));
FileList=Filelist(Filelist.isdir==false,'name');
FileList2=Filelist(endsWith(Filelist.name,'.xls'),'name');
DirSize=size(FileList2);
FileName=strcat(dname,"/",cell2mat(FileList2{1,1}));
Compilation=readtable(FileName);
for i=2:DirSize(1,1)
    FileName=strcat(dname,"/",cell2mat(FileList2{i,1}));
    Compilation=[Compilation;readtable(FileName)];
end
FileName=strcat(dname,"/Compilation.xls");
writetable(Compilation,FileName)
