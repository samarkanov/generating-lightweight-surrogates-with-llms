function res = compiledSimulinkTool(type)
% Return the JSON-encoded rounded timeseries after running a simulation. 
% Supported types: simple
arguments(Input)
    type string % Name of the sequence to generate
end
arguments(Output)
    res string  % Timeseries data
end

ss = simulation("mySimulinkModel");
ss.start();
while ss.Status ~= "inactive"
    pause(0.1);
end
% Round time and data to 2 decimal places before packaging
res = struct(time=round(ss.SimulationOutput.yout{1}.Values.Time, 2),...
             data=round(ss.SimulationOutput.yout{1}.Values.Data, 2));
% plot(res.time, res.data)
res = jsonencode(res);

end
