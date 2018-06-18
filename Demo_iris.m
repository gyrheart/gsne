% This demo shows the MDS/tsne/gsne embedding of iris dataset in 2-D space.

% Run this command to get the MATLAB private functions if it is the fist running.
GetPrivateFunction

%% iris data
load fisheriris

hFig = figure(1);
set(hFig,'position',[0 0 800 800])
repeats = 3;

% MDS maps of three repeats
for k = 1:repeats
Euc_dist = squareform(pdist(meas)); % Euclidean pairwise distances
Pos = mdscale(Euc_dist,2,'Start','random');
subplot(3,3,k)
gscatter(Pos(:,1),Pos(:,2),species,[],[],[])
title(['MDS, repeat ',num2str(k)])
end
% tsne maps of three repeats
lambda = 0;
for k = 1:repeats
Pos = gsne(meas,lambda,'Algorithm','exact');
subplot(3,3,3+k)
gscatter(Pos(:,1),Pos(:,2),species,[],[],[])
title(['tsne, repeat ',num2str(k)])
end

% gsne maps of three repeats
lambda = 1;
for k = 1:repeats
Pos = gsne(meas,lambda,'Algorithm','exact');
subplot(3,3,6+k)
gscatter(Pos(:,1),Pos(:,2),species,[],[],[])
title(['gsne, \lambda = 1, repeat ',num2str(k)])
end
