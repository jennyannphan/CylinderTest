%******************* vs. 1.0*******************
% A. File to import video to cylinder test
% Written by Jenny-Ann Phan jap@biomed.au.dk
% Aarhus, August 2018
%*******************************************

[FileName,PathName] = uigetfile;
file=[PathName '/' FileName];
videoReader = VideoReader(file);
fig = implay(file);
