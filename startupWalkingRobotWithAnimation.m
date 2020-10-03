% Walking Robot Startup Script
%
% Copyright 2017-2019 The MathWorks, Inc.

%% Clear everything
clc
clear
close all

%% Add folders to the path
addpath(genpath('LIPM'), ...                    % Linear inverted pendulum model (LIPM) files
        genpath('ModelingSimulation'), ...      % Modeling and simulation files
        genpath('Optimization'), ...            % Optimization files
        genpath('ControlDesign'), ...           % Control design files
        genpath('ReinforcementLearning'), ...   % Reinforcement learning files
        genpath('Libraries'));                  % Other dependencies

%% Load basic robot parameters from modeling and simulation example
robotParameters

%% Load Simulink 2d model 
open_system("walkingRobotRL2D");

%% Load RL robot parameters
robotParametersRL

%% enable animation
set_param(bdroot,'SimMechanicsOpenEditorOnUpdate','on');

%% setup parallel pool
useParallel=false;

%% fit 2D Waking Agent
createWalkingAgent2D;

