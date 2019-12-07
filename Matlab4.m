function Matlab4(h, v, angle, Ax, Ay)

T =(sqrt(abs((v*sind(angle))^2-2*Ay*h)) - v*sind(angle))/Ay;
if T<=0 
    T=(-sqrt(abs((v*sind(angle))^2-2*Ay*h)) - v*sind(angle))/Ay; 
end

if h < 0 && Ay == 0
    error('Invalid! Please input Height and a Vertical Acceleration!')
elseif h < 0
    error('Invalid! Please input Height.')    
elseif Ay == 0
    error('Zero vertical acceleration means no free-fall motion!')  
end
t=0:0.005:T;
x = (v.*cosd(angle).*t)+((1./2).*Ax.*(t.^2));
y = (h + v.*sind(angle).*t)+((1./2).*Ay.*(t.^2));

plot(x,y)
grid on
xlabel('Horizontal Range')
ylabel('Height')
title('Trajectory')
