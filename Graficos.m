clear
close all
load vector
load variables
[c,cm,ind,per] = confusion(var_y,var_z);
plotconfusion(var_y,var_z)
figure(2)
plot(log(error),'-r')
title('Error vs Nodos Ocultos')
xlabel('Nh')
ylabel('Log(Error)')
grid on
t=1:501;
figure(6)
%plot(log(bfit),'-r')
scatter(log(bfit),t)
title('MSE vs Iteraciones')
xlabel('Iteraciones')
ylabel('Log(MSE)')
grid on
figure(3)
plot(var_z(1,:),'-r')
title('Clase 1')
xlabel('time (sec)')
ylabel('Amplitud')
grid on
figure(4)
plot(var_z(2,:),'-r')
title('Clase 2')
xlabel('time (sec)')
ylabel('Amplitud')
grid on
figure(5)
plot(var_z(3,:),'-r')
title('Clase 3')
xlabel('time (sec)')
ylabel('Amplitud')
grid on




