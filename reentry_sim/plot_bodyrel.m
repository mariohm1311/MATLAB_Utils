function plot_bodyrel(trajectory,body_radius,circ_portion,aspect_ratio)
    N = 500;
    angle = linspace(pi/2,pi/2-circ_portion*2*pi,N);
    EarthX = zeros(N,1);
    EarthY = zeros(N,1);
    for i = 1:N
        EarthX(i) = body_radius*cos(angle(i));
        EarthY(i) = body_radius*sin(angle(i));
    end

    plot(trajectory(:,1),trajectory(:,2))
    hold on
    plot(EarthX,EarthY)
    pbaspect(aspect_ratio)
    hold off
end