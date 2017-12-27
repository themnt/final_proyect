clear
close all
load Param_80_20


error(1:10)=100;
for Nh=1:10
    fprintf('%d\n',Nh);
	for Run=1:5
		[net Tr]=mlp_lm(xe,ye,Nh);
		z=sim(net,xv);
		er=yv-z;
		error_lm=norm(er);
		if error(Nh)>error_lm
			error(Nh)=error_lm;
		end
	end
end

save vector error