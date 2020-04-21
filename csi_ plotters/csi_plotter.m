

clear;
clc;

csi1 = read_bf_file('csi_noactivity_1.dat');
csi2 = read_bf_file('/home/surya/Desktop/wifi_sensing/linux-80211n-csitool-supplementary-master/matlab/sample_data/DLink_DIR816_July19/csi_walk_d6e5_2.dat');


function ret = plotcsi(csi1)
ret = zeros(30007,1);
for i = 1:30007
csi_struct = csi1{i};
ret(i) = csi_struct.('csi')(1)(1)(1);
ret(i) = angle(ret(i));
%ret(i) = 10 * log10(ret(i));
end
end



 x = 1:30007;
 y1 = plotcsi(csi1);
 y2 = plotcsi(csi2);
 plot(x,y1);
 hold on;
 plot(x,y2);
 hold off;
  
