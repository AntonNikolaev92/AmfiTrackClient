ip_addr = '10.47.9.240';

lvec = 10;
p01 = [0, 0, 0, 1]';
p02 = [lvec,0,0,1]';

hfig = figure();
ha = gca();

while true
    
[ t, q, ts ] =  receiveFromAmfiTrack(ip_addr, 10000);

% get translation metrix
T = eye(4);
T(1,4) = t(1,1);
T(2,4) = t(2,1);
T(3,4) = t(3,1);
% get rotation metrix
R = eye(4);
Rhlp = qGetR(q);
R(1:3,1:3) = Rhlp;

p1 = T*R*p01;
p2 = T*R*p02;
subplot(1,
quiver3( p1(1), p1(2), p1(3), p2(1), p2(2), p2(3) );
hold on;
plot3(0,0,0,'*');
quiver3( 0, 0, 0, lvec*50, 0, 0 );
quiver3( 0, 0, 0, 0, lvec*50, 0 );
quiver3( 0, 0, 0, 0, 0, lvec*50 );
xlabel('x (mm)');   ylabel('y (mm)');   zlabel('z (mm)'); grid on;
axis( [ -500 500 -500 500 -500 500 ] ); 
view (45,45);
pause(0.01);
hold off

end