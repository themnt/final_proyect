load Param3
params=60*10;

%training_75=zeros(params*0.75,11);
training_80=zeros(params*0.8,15);
%training_85=zeros(params*0.85,11);
%testing_25=zeros(params*0.25,11);
testing_20=zeros(params*0.2,15);
%testing_15=zeros(params*0.15,11);

%Training 80 - Testing 20
a80=0;
for j=1:params
    if j <=params*0.8
        training_80(j,:) = final_data(j,:);

    else
        a80=a80+1;
        testing_20(a80,:) = final_data(j,:);
    end    
end




save Param4  training_80   testing_20 