clear
close all
load Param_80_20
min=100;


for Run=1:5
    [net Tr]=mlp_lm(xe,ye,6);
    z=sim(net,xv);
    er=yv-z;
    error_lm=norm(er);
    if error_lm<min
        min=error_lm;
        var_x=xv;
        var_y=yv;
        var_z=z;
        bfit=Tr.perf;
    end
end
save variables var_y var_z var_x bfit