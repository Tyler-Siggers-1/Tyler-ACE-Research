function cost = optimization_PID(k)
% k = reshape(k,3,6);
assignin('base','k',k);
sim('QuadControlSim.slx');
cost = IAE(end);
end

