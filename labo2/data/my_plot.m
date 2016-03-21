close all;
res = importdata('1_step_response_done.txt');

hold on;
plot(res(:,1), res(:,5))
     %res(:,1), res(:,4));
     
pos_in_sec = 6.2;
plot(res(pos_in_sec*10,1),res(pos_in_sec*10,5),'r.');

pos_in_sec = 11.4;
plot(res(pos_in_sec*10,1),res(pos_in_sec*10,5),'r.');