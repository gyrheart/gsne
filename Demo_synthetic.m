% This demo shows tsne/gsne embedding of synthetic data points in 2-D
% space.

% Run this command to get the MATLAB private functions if it is the fist running.
GetPrivateFunction

%% Synthetic data in a 2D plane
N = 50; % number of points in each group
radius_range = [0,1;0,1;2,3;2,3;4,5;4,5]; % radii range of six groups
angle_range = [0,pi/6;pi,7/6*pi;-pi/6,0;pi/3,pi/2;2/3*pi,5/6*pi;7/6*pi,4/3*pi];
group = [];
Y = [];
for k = 1:6  % six groups
ra = radius_range(k,1);
rb = radius_range(k,2);
aa = angle_range(k,1);
ab = angle_range(k,2);
temp_group = k*ones(N,1);
group = [group;temp_group];
Y_temp = zeros(N,2);
r_temp = ra + (rb-ra)*rand(N,1);
theta_temp = aa + (ab-aa)*rand(N,1);
Y_temp(:,1) = r_temp.*cos(theta_temp);
Y_temp(:,2) = r_temp.*sin(theta_temp);
Y = [Y;Y_temp];
end

%%
hFig = figure(2);
set(hFig,'position',[0 0 800 800])
repeats = 3;

% maps of 2D synthetic data
for k = 1:repeats
Pos = gsne(Y,lambda,'Algorithm','exact');
subplot(3,3,k)
gscatter(Y(:,1),Y(:,2),group,[],[],[],'off')
title('Data')
end
 
% tsne maps of three repeats
lambda = 0;
for k = 1:repeats
Pos = gsne(Y,lambda,'Algorithm','exact');
subplot(3,3,k+3)
gscatter(Pos(:,1),Pos(:,2),group,[],[],[],'off')
title(['tsne, repeat ',num2str(k)])
end

% gsne maps of three repeats
lambda = 1;
for k = 1:repeats
Pos = gsne(Y,lambda,'Algorithm','exact');
subplot(3,3,k+6)
gscatter(Pos(:,1),Pos(:,2),group,[],[],[],'off')
title(['gsne, \lambda = 1, repeat ',num2str(k)])
end