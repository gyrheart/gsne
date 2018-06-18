% Get tsnebhmex file
if ~exist('tsnebhmex','file')
disp('Get tsnebhmex file')
path1 = which('private/tsnebhmex');
path2 = pwd;
copyfile(path1,path2)
disp('Done!')
end
 
% Get tsnelossmex file
if ~exist('tsnelossmex','file')
disp('Get tsnelossmex file' )
path1 = which('private/tsnelossmex');
path2 = pwd;
copyfile(path1,path2)
disp('Done!')
end
