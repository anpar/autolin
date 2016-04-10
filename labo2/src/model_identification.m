clear all;
res = importdata('data/model_identification_ultimate.txt');

% Plot the entire data set
%plot(res(:,1), res(:,5))
%title('Step response in open loop')
%xlabel('time [s]');
%ylabel('angular speed [rot/s]');
%xlim([res(1,1) res(end,1)])

% Plot the steady state after 6V unit step
%plot(res(125:220,1), res(125:220,5));

steady_state = mean(res(125:200, 1));
K = (steady_state-3)/6

start = 0;
for i=1:length(res)
    if res(i,5) > 3 & start == 0
        start = res(i,1);
    end
   
    if res(i,5) - 3 > (steady_state - 3)*0.98
        tau = (res(i,1) - start)/4
        break
    end
end

% Usign tau instead of 0.8 leads to a not so good result
Gs = tf([K], [0.8 1])

% Confront model and measurements
plot(res(89:160,1)-res(89,1), res(89:160,5), 'r'); hold on;
[y, t] = step(Gs*6);
plot(t, 3+y, 'g');
title('Step response in open loop : model vs. measurements')
xlabel('time [s]');
ylabel('angular speed [rot/s]');
legend('Measurements', 'Model');