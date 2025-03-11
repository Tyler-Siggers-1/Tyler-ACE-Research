clc, clear, close all

quad_X500 = quad_X500;

%   k_phi = [27.9062   68.7010    1.1360];
% k_theta = [50.4531   91.0866    2.3590];
%   k_psi = [69.3768   17.2302    2.1792];
% 
% k_pos_x = [43.3092   11.0356   29.1396];
% k_pos_y = [46.8838   19.5078   29.5110];
% k_pos_z = [35.2571    6.9620   13.8141];
% 
% k = [k_phi' k_theta' k_psi' k_pos_x' k_pos_y' k_pos_z'];

% k = [27.9062   68.7010    1.1360    50.4531   91.0866    2.3590     69.3768   17.2302    2.1792 43.3092   11.0356   29.1396 46.8838   19.5078   29.5110 35.2571    6.9620   13.8141];
% k = [28.1879   62.7705    1.0352   50.9936   85.8154    2.1477   65.1579   17.3943    2.1526   47.5518   10.7647   30.0843   51.1285   18.5771   32.0327   31.9971    6.3673   14.7368];
% k = [29.1839   72.0704    1.1442   52.9403   82.5952    2.3249   73.1197   18.7851    2.1586   47.4014   11.9365   26.3800   51.0243   18.4162   26.9857   32.1238    7.1534   14.7271];
% k = [30.3908   64.8356    1.1014   52.9186   94.8689    2.3721   74.9095   15.9343    2.3903   47.5108   11.5775   28.9638   51.1891   18.0154   28.1612   32.0533    6.4173   15.1622];
k = [32.9509   89.0229    1.5553   81.5107   69.3464    3.3873  146.9407   18.0734    3.2479  163.3666    4.9159   98.6709  169.0187   49.1099   51.6014   19.1937    9.9882   17.4013];
k = reshape(k,3,6);

traj = 0;

switch traj
    case 0
        load('MinSnapFig8Traj.mat','trajMinSnap')
        p_Ref = trajMinSnap.p;
        p_Ref(3,:) = -1 .* p_Ref(3,:);
        psi_Ref = trajMinSnap.psi .* 180/pi;
        t_Vec = trajMinSnap.t;
    case 1
        load('MinSnapFig8Traj.mat','trajMinSnap')
        p_Ref = trajMinSnap.p;
        p_Ref(2,:) = zeros(size(p_Ref(2,:)));
        p_Ref(1,:) = zeros(size(p_Ref(2,:)));
        psi_Ref = trajMinSnap.psi .* 180/pi;
        t_Vec = trajMinSnap.t;
end

% figure()
% subplot(4,1,1)
% plot(t_Vec, p_Ref(1,:), LineWidth=1.5)
% ylabel('X, m'), grid on
% subplot(4,1,2)
% plot(t_Vec, p_Ref(2,:), LineWidth=1.5)
% ylabel('Y, m'), grid on
% subplot(4,1,3)
% plot(t_Vec, p_Ref(3,:), LineWidth=1.5)
% ylabel('Z, m'), grid on
% subplot(4,1,4)
% plot(t_Vec, psi_Ref, LineWidth=1.5)
% ylabel('Psi, deg'), grid on
% xlabel('Time, s')