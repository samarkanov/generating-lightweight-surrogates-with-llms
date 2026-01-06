% plot_data.m

% Original data from the simulation (ignoring the first null point)
time = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50];
data = [-0.5,-2.48,-1.41,2.14,3.06,-0.46,-3.64,-1.72,2.85,3.51,-0.91,-4.2,-1.52,3.46,3.59,-1.48,-4.55,-1.12,4.01,3.46,-2.09,-4.74,-0.6,4.48,3.19,-2.72,-4.8,0,4.87,2.79,-3.33,-4.73,0.66,5.16,2.29,-3.91,-4.55,1.35,5.36,1.71,-4.44,-4.26,2.04,5.46,1.06,-4.9,-3.86,2.73,5.45,0.36];

% Approximated data using the suggested function
% f(t) = (0.1*t + 2.5) * sin(1.256*t - 4.71)
a = 0.1;
b = 2.5;
w = 1.256;
p = -4.71;
approximated_data = (a*time + b) .* sin(w*time + p);

% Plotting
figure;
plot(time, data, 'b-', 'LineWidth', 2);
hold on;
plot(time, approximated_data, 'r--', 'LineWidth', 2);
hold off;

% Adding labels and title
xlabel('Time (s)');
ylabel('Value');
title('Original Data vs. Approximated Data');
legend('Original Data', 'Approximated Data');
grid on;

% Save the plot to a file
print('simulation_vs_approximation_new.png', '-dpng');