%% TRUSS_2D_MAIN %%

%% initializing
clc % clear screen 
clear % clear variables in memory

% global variables
global beam_model_name   
global node  el_cfg  n_dof_tot   
global myBigNumber   mySmallNumber   
global K_tot_gl  F_tot_gl  U_tot_gl 

%% input model information
beam_2d_input_data

% find a big number and a small number
myBigNumber = max( max (el_cfg,[],2)) * 10^6
mySmallNumber = 10^-6
%% build the gloabal equation
truss_2d_build_equation

%% Solve the global equation
U_tot_gl = K_tot_gl \ F_tot_gl

%% Post Process
truss_2d_post_process

%% out put analysis results
truss_2d_output_result
