ip_addr = '10.47.9.240';

[ t, q, ts ] =  receiveFromAmfiTrack(ip_addr, 10000);

subplot(3,3,1); plot(ts, t(1,:)); ylabel('tx'); grid on;
subplot(3,3,2); plot(ts, t(2,:)); ylabel('ty'); grid on;
subplot(3,3,3); plot(ts, t(3,:)); ylabel('tz'); grid on;
subplot(3,3,4); plot(ts, q(1,:)); ylabel('qx'); grid on;
subplot(3,3,5); plot(ts, q(2,:)); ylabel('qy'); grid on;
subplot(3,3,6); plot(ts, q(3,:)); ylabel('qz'); grid on;
subplot(3,3,7); plot(ts); grid on;
    
