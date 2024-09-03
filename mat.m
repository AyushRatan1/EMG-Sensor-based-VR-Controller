% Define parameters
numSamples = 1000; % Number of samples
emgScale = 10; % Scaling factor for EMG data

% Generate random EMG data (simulated)
emgData = randn(numSamples, 1) * emgScale;

% Generate random hand movement data (simulated)
handMovement = zeros(numSamples, 3);
handMovement(:,3) = randn(numSamples, 1); % Only Z-axis movement

% Create a 3D plot
figure;
axisRange = [-5 5]; % Range for the axis
scatter3(handMovement(:,1), handMovement(:,2), handMovement(:,3), 50, emgData, 'filled');
colorbar;
colormap jet;

% Set axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Hand Movement with EMG Data');

% Display plot
grid on;
