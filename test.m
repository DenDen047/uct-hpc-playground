clc;

rng default
options = optimoptions('ga', 'UseParallel',true, 'UseVectorized',true);
problem = struct( ...
    'fitnessfcn', @ps_example, ...
    'nvars', 2, ...
    'solver', 'ga', ...
    'options', options ...
);
x = solve(problem)