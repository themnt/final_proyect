function [net TR]=lmmlp(P,T,Nh)

net=newff(P,T,[Nh  10],{'logsig','softmax'}); 

%=========================================
net.trainFcn='trainlm';
net.trainParam.epochs=500;     %Maximum number of epochs to train
net.trainParam.goal=1e-10;     %  Performance goal
net.trainParam.max_fail=5;     %Maximum validation failures
net.trainParam.min_grad=1e-10; %  Minimum performance gradient
net.trainParam.mu=0.001; %0.1;       %Initial Mu
net.trainParam.mu_dec=0.1; %0.1;     %Mu decrease factor
net.trainParam.mu_inc=10; % 10;      % Mu increase factor
net.trainParam.mu_max=1e10;    % Maximum Mu
net.trainParam.show=10;  %  Epochs between displays (NaN for no displays)
net.trainParam.showCommandLine=0; %Generate command-line output
net.trainParam.showWindow=1; %Show training GUI

net.trainParam.time=inf;
net.divideFcn='';
%net.performfcn='sse';
net.performfcn='mse';
[net TR]=train(net,P,T);