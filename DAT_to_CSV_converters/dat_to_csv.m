clc;
clear ;

myDir = '/home/surya/Desktop/wifi_sensing/intel_dataset/intel_captures_for_25x30Room/DLink_DIR816_July19';	% gets directory
destination = '/home/surya/Desktop/wifi_sensing/intel_dataset/intel_captures_for_25x30Room/July19_csv';

myFiles = dir(fullfile(myDir,'*.dat'));
for k = 1:length(myFiles)
    tic
	baseFileName = myFiles(k).name;
    
	fullFileName = fullfile(myDir, baseFileName);
    [folder,name,extension] = fileparts(fullFileName);% 
	fprintf(1, 'Now reading %s\n', fullFileName);
    
    
    
                 ret=read_bf_file(fullFileName);
             for k=1:size(ret,1)
                 csi(k,:,:)=ret{k}.csi;              
             end
           
            file_name_csv=sprintf(destination+"/"+name + ".csv");
          csvwrite(file_name_csv,csi);
            fprintf(file_name_csv + " " + "done !!!\n" );
    toc
    
end

fprintf("the end !!!");
