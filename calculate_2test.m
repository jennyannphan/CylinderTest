% analyse cylinder test

% find frames where L+R at the same time = both: 
u=unique(touches_left)

[aa,ii] = ismember(touches_left,touches_right); % aa are binary logicals 1 or zero, ii are the actual frames
[i1,j1] = find(aa);
out = [touches_right(ii(aa)),i1];

% In order to determine both, one has to set a threshold for what is simultaneous. 
% the videos are recorded with 25 frames per second, therefore the duration
% per frame is 0.04 sec per frame. 
% The landing on one paw relative to the other paw can be distinguished
% with high accuracy 

% convert to seconds by dividing frame number with frames per second:
time_left=touches_left/25;
time_right=touches_right/25;


% touches from 0-30 sec
[rowL colL]=find(time_left>0+1 & time_left<30+1);
left_030=size(rowL,1);
[rowL colL]=find(time_right>0+1 & time_right<30+1);
right_030=size(rowL,1);

% touches from 0-60 sec
[rowL colL]=find(time_left>0+1 & time_left<60+1);
left_060=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<60+1);
right_060=size(rowR,1);

left_right_ratio_060=left_060/right_060
total_060=left_060+right_060

% touches from 0-90 sec
[rowL colL]=find(time_left>0+1 & time_left<90+1);
left_090=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<90+1);
right_090=size(rowR,1);

% touches from 0-120 sec
[rowL colL]=find(time_left>0+1 & time_left<120+1);
left_120=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<120+1);
right_120=size(rowR,1);

left_right_ratio_120=left_120/right_120
total_120=left_120+right_120

% touches from 0-150 sec
[rowL colL]=find(time_left>0+1 & time_left<150+1);
left_150=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<150+1);
right_150=size(rowR,1);

% touches from 0-180 sec
[rowL colL]=find(time_left>0+1 & time_left<180+1);
left_180=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<180+1);
right_180=size(rowR,1);

left_right_ratio_180=left_180/right_180
total_180=left_180+right_180

% touches from 0-210 sec
[rowL colL]=find(time_left>0+1 & time_left<210+1);
left_210=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<210+1);
right_210=size(rowR,1);

% touches from 0-240 sec
[rowL colL]=find(time_left>0+1 & time_left<240+1);
left_240=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<240+1);
right_240=size(rowR,1);

left_right_ratio_240=left_240/right_240
total_240=left_240+right_240



% touches from 0-270 sec
[rowL colL]=find(time_left>0+1 & time_left<270+1);
left_270=size(rowL,1);

[rowR colR]=find(time_right>0+1 & time_right<270+1);
right_270=size(rowR,1);
