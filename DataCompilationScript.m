%DATA COMPILATION SCRIPT, VERSION2, July 2022, Seroude Lab,
%Queen's University, Kingston, Canada
dname=0;
while dname==0
dname = uigetdir();
if dname==0
    choice=menu('No directory selected (cancel), do you want to abort?','YES, Stop','Select directory again');
    if choice==1
    return
    end
else
    Filelist=struct2table(dir(dname));
    FileList=Filelist(Filelist.isdir==false,'name');
    FileList2=Filelist(endsWith(Filelist.name,'.xls'),'name');
    DirSize=size(FileList2);
    if DirSize(1)==0
        choice=menu('No .xls files in the directory selected, do you want to abort?','YES, Stop','Select another directory');
        if choice==1
        return
        else
            dname=0;
        end
    end
end
end
FileName=strcat(dname,"/",cell2mat(FileList2{1,1}));
Compilation=readtable(FileName);
for i=2:DirSize(1,1)
    FileName=strcat(dname,"/",cell2mat(FileList2{i,1}));
    Compilation=[Compilation;readtable(FileName)];
end
FileName=strcat(dname,"/Compilation.xls");
writetable(Compilation,FileName)
