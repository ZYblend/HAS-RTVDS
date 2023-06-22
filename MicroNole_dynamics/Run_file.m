%% Run file for vehicle dynamical simulation
%% run model
clear all
clc

%% Model parameters
load Thetas.mat
L = 0.256;     % length of wheelbase (m)
Rw = 0.024;    % wheel radius (m)
rg = 9.49;     % total drive ratio


%% run system
% command satuation (for safety)
sat_pwm = 0.2;
sat_steering = pi/6;

% initial conditions
V0 = [0.0; 0.0; 0.0];      % [yaw rate; Vx; Vy]
X0 = [0.0; 0.0; 0.0];      % [x, y, heading]  
omegam0 = 0.0;

Ts = 0.01;  % control frequency 1/Ts Hz