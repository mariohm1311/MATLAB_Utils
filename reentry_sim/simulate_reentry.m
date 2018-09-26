function simulate_reentry
    simOut = sim('reentry_sim','ReturnWorkspaceOutputs','on');
    paramList = simOut.who;
    for i= 1:length(paramList)
        assignin('base',paramList{i},simOut.get(paramList{i}));
    end
end