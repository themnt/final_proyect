load Param2

%Mezclador de datos
params=60*10;
temporal = zeros(params,15);
randoms=randperm(params);
for i=1:params
	Row = randoms(i);
	temporal(i,:) = data(Row,:);
end
final_data = temporal;
save Param3 final_data


