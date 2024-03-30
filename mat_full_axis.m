% Define parameters
numSamples = 1000; % Number of samples
emgScale = 10; % Scaling factor for EMG data

% Generate random EMG data (simulated)
emgData = randn(numSamples, 1) * emgScale;

% Generate random hand movement data (simulated)
handMovement = randn(numSamples, 3);

% Create a 3D plot
figure;
axisRange = [-5 5]; % Range for the axis
plot3(handMovement(:,1), handMovement(:,2), handMovement(:,3), 'b'); % Plot hand movement
hold on;

% Plot EMG data as a color gradient along the movement trajectory
emgColor = linspace(min(emgData), max(emgData), numSamples);
scatter3(handMovement(:,1), handMovement(:,2), handMovement(:,3), 50, emgColor, 'filled');
colorbar;
colormap jet;

% Set axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Hand Movement with EMG Data');

% Display plot
grid on;