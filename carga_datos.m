load 2
load 171
load 187
load 199
%Carga de datos
inner = zeros(40,3000);
ball = zeros(40,3000);
normal = zeros(40,3000);
outer = zeros(40,3000);
separator=1;
move = 1;
for i=1:120000
	inner(separator,move) = X171_DE_time(i,1);
    ball(separator,move) = X187_DE_time(i,1);
    outer(separator,move) = X199_DE_time(i,1);
    normal(separator,move) = X099_DE_time(i,1);
    if separator == 40
        move = move + 1;
        separator = 1;
    else        
        separator = separator + 1;
    end
end
save Param inner ball normal outer