% Genetic Algorithim to tune PID Parameters
% Initialization
% k  = [36.7155   85.1100    1.3410   69.9160   78.0500    3.1612  122.7527   15.3021    3.1082  137.2956    5.1094   84.3793  143.4072   41.8447   51.7269   21.6239    9.4951   14.8619];
% lb = zeros(1,length(k));
% ub = zeros(1,length(k));

k1 = [19.1937    9.9882   17.4013];
lb = zeros(1,length(k1));
ub = 100*ones(size(k1));


% for i=1:length(k1)
%     lb(i) = 0.8*k1(i);
%     ub(i) = 1.2*k1(i);
% end
no_var = 3;

% GA Options
% hybridopts = optimoptions('fmincon','OptimalityTolerance',1e-10);
% ga_opt = optimoptions('ga','Display','off','Generations',10, ...
%     'PopulationSize',25,'PlotFcns',@gaplotbestf,'HybridFcn',{'fmincon',hybridopts});
ga_opt = optimoptions('ga','Display','off','Generations',15, ...
    'PopulationSize',25,'PlotFcns',@gaplotbestf);

obj_fn = @(k1) optimization_PID(k1);

% GA Command
[kOpt,best] = ga((obj_fn),no_var,[],[],[],[],lb,ub,[],ga_opt);

k_phi_Best = [27.9062   68.7010    1.1360];
k_theta_Best = [50.4531   91.0866    2.3590];
k_psi_Best = [69.3768   17.2302    2.1792];
k_pos_x_Best = [43.3092   11.0356   29.1396];
k_pos_y_Best = [46.8838   19.5078   29.5110];
k_pos_z_Best = [35.2571    6.9620   13.8141];

