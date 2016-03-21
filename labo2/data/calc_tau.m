clear all;
res = importdata('1_step_response_done.txt'):

plot(res(:,1), res(:,5));