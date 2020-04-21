function ret = plotcsi(csi_values,p)
ret = zeros(30007,30);

for i = 1:50
  for j = 2
csi_struct = csi_values{i};
ret(i,j) = csi_struct.('csi')(1,1,j);
ret(i,j) = abs(ret(i));
ret(i,j) = 10 * log10(ret(i));



end
end
end

