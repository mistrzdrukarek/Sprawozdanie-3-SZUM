R=0.025; %promien kola
L=0.10; %odleglosc miedzy kolami

%punkt startowy
X=50;
Y=50;
Teta=0;

V1=w1*R;
V2=w2*R;

for i=0:1:100
Teta_dot=(V2-V1)/L;
X_dot=((V1+V2)/2)*cos(Teta);
Y_dot=((V1+V2)/2)*sin(Teta);

X=X+X_dot;
Y=Y+Y_dot;
Teta=Teta+Teta_dot;

plot(X,Y,'xr')
drawnow
hold on;
end

