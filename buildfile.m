function plan = buildfile
import matlab.buildtool.tasks.*
plan = buildplan(localfunctions);
end

function buildTask(~)
mcpTool = prodserver.mcp.build("compiledSimulinkTool", ...
    wrapper="None", ...
    definition="compiledSimulinkTool.json");

endpoint = prodserver.mcp.deploy(mcpTool,"localhost",9910);
disp(endpoint);
end
