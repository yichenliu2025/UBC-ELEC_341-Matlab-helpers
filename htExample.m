% Example script of heurTune tool
clear all; clc; close all;

% Define System
CF = 100;
G  = zpk([], [-1 -2 -3], 1);
H  = zpk([], -CF, CF);
GH = G*H;
p  = -2*CF;   % FDD with no filter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PID Controller Gains
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GAIN.O.K  = 31;
GAIN.O.Kp = 1.06;
GAIN.O.Ki = 1;
GAIN.O.Kd = 1.18;

% New Values
GAIN.N.K  = 7;
GAIN.N.Kp = 2.3;
GAIN.N.Ki = 1.5;
GAIN.N.Kd = 1.0;

% Tune Parameters
order = 'PKID';     % Parameter tuning order
tMax  = 6;          % Simulation time (s)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Heuristic Tuning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[CLTF OLTF] = heurTune(order, tMax, G, H, GAIN, p);
