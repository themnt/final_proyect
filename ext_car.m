load Param
%Extracion de caracteristicas

data = zeros(60*10:14);
contador_general=1;

%params
largo=1000;
p1=60;


%Normal
for j=1:p1
    datos_n= zeros(largo,1);
    for i=1:largo
        datos_n(i,1)= normal(i,j);
    end
    varianza_n = rms(datos_n);
    kurtosis_n = kurtosis(datos_n);
    skewness_n = entropy(datos_n);
    promedio_n = mean(abs(datos_n));
    data(contador_general,1)=varianza_n/promedio_n;
    data(contador_general,2)=max(datos_n);
    data(contador_general,3)=kurtosis_n;
    data(contador_general,4)=skewness_n;
    data(contador_general,5)=varianza_n;
    data(contador_general,6)=1;
    contador_general = contador_general + 1;
end
data(1:p1,1)=smooth(data(1:p1,1));
data(1:p1,2)=smooth(data(1:p1,2));
data(1:p1,3)=smooth(data(1:p1,3));
data(1:p1,4)=smooth(data(1:p1,4));
data(1:p1,5)=smooth(data(1:p1,5));
%Inner
for j=1:p1
    datos_i= zeros(largo,1);
    for i=1:largo
        datos_i(i,1) = inner1(i,j);
    end
    varianza_i = rms(datos_i);
    kurtosis_i = kurtosis(datos_i);
    skewness_i = entropy(datos_i);
    promedio_i = mean(abs(datos_i));
    data(contador_general,1)=varianza_i/promedio_i;
    data(contador_general,2)=max(datos_i);
    data(contador_general,3)=kurtosis_i;
    data(contador_general,4)=skewness_i;
    data(contador_general,5)=varianza_i;
    data(contador_general,7)=1;
    contador_general = contador_general+1;
end
data(p1+1:p1*2,1)=smooth(data(p1+1:p1*2,1));
data(p1+1:p1*2,2)=smooth(data(p1+1:p1*2,2));
data(p1+1:p1*2,3)=smooth(data(p1+1:p1*2,3));
data(p1+1:p1*2,4)=smooth(data(p1+1:p1*2,4));
data(p1+1:p1*2,5)=smooth(data(p1+1:p1*2,5));

for j=1:p1
    datos_o= zeros(largo,1);
    for i=1:largo
        datos_o(i,1)= outer1(i,j);
    end
    varianza_o = rms(datos_o);
    kurtosis_o = kurtosis(datos_o);
    skewness_o = entropy(datos_o);
    promedio_o = mean(abs(datos_o));
    data(contador_general,1)=varianza_o/promedio_o;
    data(contador_general,2)=max(datos_o);
    data(contador_general,3)=kurtosis_o;
    data(contador_general,4)=skewness_o;
    data(contador_general,5)=varianza_o;
    data(contador_general,8)=1;
    contador_general = contador_general + 1;
end
data(2*p1+1:p1*3,1)=smooth(data(2*p1+1:p1*3,1));
data(2*p1+1:p1*3,2)=smooth(data(2*p1+1:p1*3,2));
data(2*p1+1:p1*3,3)=smooth(data(2*p1+1:p1*3,3));
data(2*p1+1:p1*3,4)=smooth(data(2*p1+1:p1*3,4));
data(2*p1+1:p1*3,5)=smooth(data(2*p1+1:p1*3,5));

for j=1:p1
        datos_b= zeros(largo,1);
    for i=1:largo
        datos_b(i,1) = ball1(i,j);
    end
    varianza_b = rms(datos_b);
    kurtosis_b = kurtosis(datos_b);
    skewness_b = entropy(datos_b);
    promedio_b = mean(abs(datos_b));
    data(contador_general,1)=varianza_b/promedio_b;
    data(contador_general,2)=max(datos_b);
    data(contador_general,3)=kurtosis_b;
    data(contador_general,4)=skewness_b;
    data(contador_general,5)=varianza_b;
	data(contador_general,9)=1;
    contador_general = contador_general+1;
end
data(3*p1+1:p1*4,1)=smooth(data(3*p1+1:p1*4,1));
data(3*p1+1:p1*4,2)=smooth(data(3*p1+1:p1*4,2));
data(3*p1+1:p1*4,3)=smooth(data(3*p1+1:p1*4,3));
data(3*p1+1:p1*4,4)=smooth(data(3*p1+1:p1*4,4));
data(3*p1+1:p1*4,5)=smooth(data(3*p1+1:p1*4,5));

for j=1:p1
    datos_i= zeros(largo,1);
    for i=1:largo
        datos_i(i,1) = inner2(i,j);
    end
    varianza_i = rms(datos_i);
    kurtosis_i = kurtosis(datos_i);
    skewness_i = entropy(datos_i);
    promedio_i = mean(abs(datos_i));
    data(contador_general,1)=varianza_i/promedio_i;
    data(contador_general,2)=max(datos_i);
    data(contador_general,3)=kurtosis_i;
    data(contador_general,4)=skewness_i;
    data(contador_general,5)=varianza_o;
    data(contador_general,10)=1;
    contador_general = contador_general+1;
end
data(4*p1+1:p1*5,1)=smooth(data(4*p1+1:p1*5,1));
data(4*p1+1:p1*5,2)=smooth(data(4*p1+1:p1*5,2));
data(4*p1+1:p1*5,3)=smooth(data(4*p1+1:p1*5,3));
data(4*p1+1:p1*5,4)=smooth(data(4*p1+1:p1*5,4));
data(4*p1+1:p1*5,5)=smooth(data(4*p1+1:p1*5,5));

for j=1:p1
    datos_o= zeros(largo,1);
    for i=1:largo
        datos_o(i,1)= outer2(i,j);
    end
    varianza_o = rms(datos_o);
    kurtosis_o = kurtosis(datos_o);
    skewness_o = entropy(datos_o);
    promedio_o = mean(abs(datos_o));
    data(contador_general,1)=varianza_o/promedio_o;
    data(contador_general,2)=max(datos_o);
    data(contador_general,3)=kurtosis_o;
    data(contador_general,4)=skewness_o;    
    data(contador_general,5)=varianza_o;

    data(contador_general,11)=1;
    contador_general = contador_general + 1;
end
data(5*p1+1:p1*6,1)=smooth(data(5*p1+1:p1*6,1));
data(5*p1+1:p1*6,2)=smooth(data(5*p1+1:p1*6,2));
data(5*p1+1:p1*6,3)=smooth(data(5*p1+1:p1*6,3));
data(5*p1+1:p1*6,4)=smooth(data(5*p1+1:p1*6,4));
data(5*p1+1:p1*6,5)=smooth(data(5*p1+1:p1*6,5));

for j=1:p1
        datos_b= zeros(largo,1);
    for i=1:largo
        datos_b(i,1) = ball2(i,j);
    end
    varianza_b = rms(datos_b);
    kurtosis_b = kurtosis(datos_b);
    skewness_b = entropy(datos_b);
    promedio_b = mean(abs(datos_b));
    data(contador_general,1)=varianza_b/promedio_b;
    data(contador_general,2)=max(datos_b);
    data(contador_general,3)=kurtosis_b;
    data(contador_general,4)=skewness_b;
    data(contador_general,5)=varianza_b;
    data(contador_general,12)=1;
    contador_general = contador_general+1;
end
data(6*p1+1:p1*7,1)=smooth(data(6*p1+1:p1*7,1));
data(6*p1+1:p1*7,2)=smooth(data(6*p1+1:p1*7,2));
data(6*p1+1:p1*7,3)=smooth(data(6*p1+1:p1*7,3));
data(6*p1+1:p1*7,4)=smooth(data(6*p1+1:p1*7,4));
data(6*p1+1:p1*7,5)=smooth(data(6*p1+1:p1*7,5));

%inner3
for j=1:p1
        datos_i= zeros(largo,1);
    for i=1:largo
        datos_i(i,1) = inner3(i,j);
    end
    varianza_i = rms(datos_i);
    kurtosis_i = kurtosis(datos_i);
    skewness_i = entropy(datos_i);
    promedio_i = mean(abs(datos_i));
    data(contador_general,1)=varianza_i/promedio_i;
    data(contador_general,2)=max(datos_i);
    data(contador_general,3)=kurtosis_i;
    data(contador_general,4)=skewness_i;
    data(contador_general,5)=varianza_i;
    data(contador_general,13)=1;
    contador_general = contador_general+1;
end
data(7*p1+1:p1*8,1)=smooth(data(7*p1+1:p1*8,1));
data(7*p1+1:p1*8,2)=smooth(data(7*p1+1:p1*8,2));
data(7*p1+1:p1*8,3)=smooth(data(7*p1+1:p1*8,3));
data(7*p1+1:p1*8,4)=smooth(data(7*p1+1:p1*8,4));
data(7*p1+1:p1*8,5)=smooth(data(7*p1+1:p1*8,5));

for j=1:p1
        datos_o= zeros(largo,1);
    for i=1:largo
        datos_o(i,1) = outer3(i,j);
    end
    varianza_o = rms(datos_o);
    kurtosis_o = kurtosis(datos_o);
    skewness_o = entropy(datos_o);
    promedio_o = mean(abs(datos_o));
    data(contador_general,1)=varianza_o/promedio_o;
    data(contador_general,2)=max(datos_o);
    data(contador_general,3)=kurtosis_o;
    data(contador_general,4)=skewness_o;
    data(contador_general,5)=varianza_o;
    data(contador_general,14)=1;
    contador_general = contador_general+1;
end
data(8*p1+1:p1*9,1)=smooth(data(8*p1+1:p1*9,1));
data(8*p1+1:p1*9,2)=smooth(data(8*p1+1:p1*9,2));
data(8*p1+1:p1*9,3)=smooth(data(8*p1+1:p1*9,3));
data(8*p1+1:p1*9,4)=smooth(data(8*p1+1:p1*9,4));
data(8*p1+1:p1*9,5)=smooth(data(8*p1+1:p1*9,5));

for j=1:p1
        datos_b= zeros(largo,1);
    for i=1:largo
        datos_b(i,1) = ball3(i,j);
    end
    varianza_b = rms(datos_b);
    kurtosis_b = kurtosis(datos_b);
    skewness_b = entropy(datos_b);
    promedio_b = mean(abs(datos_b));
    data(contador_general,1)=varianza_b/promedio_b;
    data(contador_general,2)=max(datos_b);
    data(contador_general,3)=kurtosis_b;
    data(contador_general,4)=skewness_b;
    data(contador_general,5)=varianza_b;
    data(contador_general,15)=1;
    contador_general = contador_general+1;
end
data(9*p1+1:p1*10,1)=smooth(data(9*p1+1:p1*10,1));
data(9*p1+1:p1*10,2)=smooth(data(9*p1+1:p1*10,2));
data(9*p1+1:p1*10,3)=smooth(data(9*p1+1:p1*10,3));
data(9*p1+1:p1*10,4)=smooth(data(9*p1+1:p1*10,4));
data(9*p1+1:p1*10,5)=smooth(data(9*p1+1:p1*10,5));
save Param2 data