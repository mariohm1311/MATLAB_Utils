% Parent body.
planet = 'Mars';                        % Choose between Earth and Mars.
init_data(planet);

% Interface parameters.
init_pos = [0;115000];                  % Initial position [X,Y] (height is over ground).
init_vel = [3470;-100];                 % Initial velocity [X,Y].

% Vehicle parameters.
mass = 39500;                           % Vehicle mass.
vehicle_aerodata = [1.45,0.4,80.9];     % Vehicle aerodynamic data [Cd,Cl,Ref_Area].
AoA = 20;                               % Vehicle angle of attack (in degrees).

% Final conditions.
altitude_end = 2000;