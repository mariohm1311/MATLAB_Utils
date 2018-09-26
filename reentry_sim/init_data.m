function init_data(planet_name)
    % Import atmospheric data.
    atmo_formatSpec = 'planet_data/atmo_data/%s.mat';
    atmo_filename = sprintf(atmo_formatSpec,planet_name);
    atmo_data = importdata(atmo_filename);
    assignin('base','atmo_data',atmo_data);
    
    % Import physical data.
    body_data = importdata('planet_data/body_data.mat');
    [row,~] = find(strcmp(body_data,planet_name));
    body_data = [body_data{row,2},body_data{row,3}];
    assignin('base','body_data',body_data);
end