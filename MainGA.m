clear all
close all
clc
warning off
load('Sevenseg.mat')
set_param('SCARA_Controller2021b','SimMechanicsOpenEditorOnUpdate','off')
LB=[50,10,0.1];
UB=[200,50,10];
options = gaoptimset('Generations',10,'PopulationSize',25,'Display','iter');
[x fval]=ga(@Optimized_PID,3,[],[],[],[],LB,UB,[],options)