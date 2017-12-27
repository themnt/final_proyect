load Param4

%Datos de 80% Training y 20% Testing
params=60*10;
%Datps de training
xe=zeros(4,params*0.8);
%Targets de training
ye=zeros(4,params*0.8);
%Datos de testing
xv=zeros(4,params*0.2);
%Targets de tesing
yv=zeros(4,params*0.2);

for i=1:params*0.8
    xe(1,i)=training_80(i,1);
    xe(2,i)=training_80(i,2);
    xe(3,i)=training_80(i,3);
    xe(4,i)=training_80(i,4);
    xe(5,i)=training_80(i,5);    
    ye(1,i)=training_80(i,6);
    ye(2,i)=training_80(i,7);
    ye(3,i)=training_80(i,8);
	ye(4,i)=training_80(i,9);
    ye(5,i)=training_80(i,10);
    ye(6,i)=training_80(i,11);
    ye(7,i)=training_80(i,12);
    ye(8,i)=training_80(i,13);
    ye(9,i)=training_80(i,14);
    ye(10,i)=training_80(i,15);
end
for i=1:params*0.2
    xv(1,i)=testing_20(i,1);
    xv(2,i)=testing_20(i,2);
    xv(3,i)=testing_20(i,3);
    xv(4,i)=testing_20(i,4);
    xv(5,i)=testing_20(i,5);
    yv(1,i)=testing_20(i,6);
    yv(2,i)=testing_20(i,7);
    yv(3,i)=testing_20(i,8);
	yv(4,i)=testing_20(i,9);
    yv(5,i)=testing_20(i,10);
    yv(6,i)=testing_20(i,11);
    yv(7,i)=testing_20(i,12);
    yv(8,i)=testing_20(i,13);
    yv(9,i)=testing_20(i,14);
    yv(10,i)=testing_20(i,15);
end

save Param_80_20 xe ye xv yv