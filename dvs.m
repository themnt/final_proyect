load 0
load 1
load 2
load 3
load 105
load 106
load 107
load 108
load 118
load 119
load 120
load 121
load 130
load 131
load 132
load 133
load 169
load 170
load 171
load 172
load 185
load 186
load 187
load 188
load 197
load 198
load 199
load 200
load 209
load 210
load 211
load 212
load 222
load 223
load 224
load 225
load 234
load 235
load 236
load 237

%params
p1=60;

inner1= horzcat(X105_DE_time(1:30000),X106_DE_time(1:30000),X107_DE_time(1:30000),X108_DE_time(1:30000));
inner2= horzcat(X169_DE_time(1:30000),X170_DE_time(1:30000),X171_DE_time(1:30000),X172_DE_time(1:30000));
inner3= horzcat(X209_DE_time(1:30000),X210_DE_time(1:30000),X211_DE_time(1:30000),X212_DE_time(1:30000));
ball1= horzcat(X118_DE_time(1:30000),X119_DE_time(1:30000),X120_DE_time(1:30000),X121_DE_time(1:30000));
ball2= horzcat(X185_DE_time(1:30000),X186_DE_time(1:30000),X187_DE_time(1:30000),X188_DE_time(1:30000));
ball3= horzcat(X222_DE_time(1:30000),X223_DE_time(1:30000),X224_DE_time(1:30000),X225_DE_time(1:30000));
outer1= horzcat(X130_DE_time(1:30000),X131_DE_time(1:30000),X132_DE_time(1:30000),X133_DE_time(1:30000));
outer2= horzcat(X197_DE_time(1:30000),X198_DE_time(1:30000),X199_DE_time(1:30000),X200_DE_time(1:30000));
outer3= horzcat(X234_DE_time(1:30000),X235_DE_time(1:30000),X236_DE_time(1:30000),X237_DE_time(1:30000));
normal= horzcat(X097_DE_time(1:30000),X098_DE_time(1:30000),X099_DE_time(1:30000),X100_DE_time(1:30000));

inner1=transpose(inner1);
inner1= vec2mat(inner1,120);
ball1=transpose(ball1);
ball1 = vec2mat(ball1,120);
outer1=transpose(outer1);
outer1= vec2mat(outer1,120);
inner2=transpose(inner2);
inner2= vec2mat(inner2,120);
ball2=transpose(ball2);
ball2 = vec2mat(ball2,120);
outer2=transpose(outer2);
outer2= vec2mat(outer2,120);
inner3=transpose(inner3);
inner3= vec2mat(inner3,120);
ball3=transpose(ball3);
ball3 = vec2mat(ball3,120);
outer3=transpose(outer3);
outer3= vec2mat(outer3,120);
normal=transpose(normal);
normal= vec2mat(normal,120);

[A,B,C] = svd(normal);

A=A(:,1:p1);
B=B(1:p1,:);
C=C(:,1:p1);

[D,E,F] = svd(inner1);

D=D(:,1:p1);
E=E(1:p1,:);
F=F(:,1:p1);

[G,H,I] = svd(outer1);

G=G(:,1:p1);
H=H(1:p1,:);
I=I(:,1:p1);

[J,K,L] = svd(ball1);

J=J(:,1:p1);
K=K(1:p1,:);
L=L(:,1:p1);

[M,N,O] = svd(inner2);

M=M(:,1:p1);
N=N(1:p1,:);
O=O(:,1:p1);

[P,Q,R] = svd(outer2);

P=P(:,1:p1);
Q=Q(1:p1,:);
R=R(:,1:p1);

[S,T,U] = svd(ball2);

S=S(:,1:p1);
T=T(1:p1,:);
U=U(:,1:p1);

[V,W,X] = svd(inner3);

V=V(:,1:p1);
W=W(1:p1,:);
X=X(:,1:p1);

[Y,Z,AA] = svd(outer3);

Y=Y(:,1:p1);
Z=Z(1:p1,:);
AA=AA(:,1:p1);

[AB,AC,AD] = svd(ball3);

AB=AB(:,1:p1);
AC=AC(1:p1,:);
AD=AD(:,1:p1);
normal=zeros(1000,p1);
inner1=zeros(1000,p1);
outer1=zeros(1000,p1);
ball1=zeros(1000,p1);
inner2=zeros(1000,p1);
outer2=zeros(1000,p1);
ball2=zeros(1000,p1);
inner3=zeros(1000,p1);
outer3=zeros(1000,p1);
ball3=zeros(1000,p1);

a=A*B*C;
b=D*E*F;
c=G*H*I;
d=J*K*L;
e=M*N*O;
f=P*Q*R;
g=S*T*U;
h=V*W*X;
i=Y*Z*AA;
j=AB*AC*AD;
normal=a;
inner1=b;
outer1=c;
ball1=d;
inner2=e;
outer2=f;
ball2=g;
inner3=h;
outer3=i;
ball3=j;

save Param inner1 inner2 inner3 ball1 ball2 ball3 outer1 outer2 outer3 normal