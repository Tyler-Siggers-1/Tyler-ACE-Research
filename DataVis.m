% Data Visualization
clc

% figure()
% hold on
% plot(X_ref(:,1),X_ref(:,2),'--b',LineWidth=1.5)
% plot(X_e(:,1),X_e(:,2),'r',LineWidth=1.5)
% title('Trajectory')
% xlabel('X position, m'), ylabel('Y position, m')
% legend('Reference','Actual')
% grid on

% figure()
% plot(tout,psiData,LineWidth=1.5)
% hold on
% % plot(tout,psiCorrected,LineWidth=1.5)
% legend('Psi','Psi Corrected')




figure()
subplot(3,1,1)
hold on
plot(tout,EulerAnglesRef(:,1),'--b',LineWidth=1.5)
plot(tout,EulerAngles(:,1)*180/pi,'r',LineWidth=1.5)
title('Euler Angle History')
ylabel('Phi, deg')
legend('Reference','Actual')
grid on

subplot(3,1,2)
hold on
plot(tout,EulerAnglesRef(:,2),'--b',LineWidth=1.5)
plot(tout,EulerAngles(:,2)*180/pi,'r',LineWidth=1.5)
ylabel('Theta, deg')
legend('Reference','Actual')
grid on

subplot(3,1,3)
hold on
plot(tout,EulerAnglesRef(:,3),'--b',LineWidth=1.5)
plot(tout,EulerAngles(:,3)*180/pi,'r',LineWidth=1.5)
ylabel('Psi, deg'), xlabel('Time, s')
legend('Reference','Actual')
grid on

figure()
subplot(3,1,1)
hold on
plot(tout,X_ref(:,1),'--b',LineWidth=1.5)
plot(tout,X_e(:,1),'r',LineWidth=1.5)
title('X-Y-Z History')
ylabel('X position, m')
legend('Reference','Actual')
grid on

subplot(3,1,2)
hold on
plot(tout,X_ref(:,2),'--b',LineWidth=1.5)
plot(tout,X_e(:,2),'r',LineWidth=1.5)
ylabel('Y position, m')
legend('Reference','Actual')
grid on

subplot(3,1,3)
hold on
plot(tout,X_ref(:,3),'--b',LineWidth=1.5)
plot(tout,X_e(:,3),'r',LineWidth=1.5)
ylabel('Z position, m'), xlabel('Time, s')
legend('Reference','Actual')
grid on

figure()
set(gca, 'ZDir', 'reverse')
hold on
plot3(X_ref(:,1),X_ref(:,2),-X_ref(:,3),'--b',LineWidth=1.5)
plot3(X_e(:,1),X_e(:,2),-X_e(:,3),'r',LineWidth=1.5)
title('X-Y-Z Trajectory')
ylabel('Y position, m'), xlabel('X position, m'),zlabel('Z position, m')
legend('Reference','Actual'), grid on
xlim([-2.5 2.5]), ylim([-2.5 2.5]), zlim([-2.5 2.5])