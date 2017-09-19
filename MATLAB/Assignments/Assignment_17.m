x = linspace(0,6*pi,100);
y1 = sin(x);
y2 = cos(x);

subplot(3,1,1);
plot(x,y1);
subplot(3,1,2);
plot(x,y2);
subplot(3,1,3);
plot(x,y1,'r');
hold on;
plot(x,y2);