function cylinder_test
screensize = get(0,'ScreenSize'); % find screen size
total_screen = [250 200];

screen_xpos = ceil((screensize(3)-screensize(3))/2); % center the figure on the screen horizontally
screen_ypos = ceil((screensize(4)-screensize(4))/2); % center the figure on the screen vertically

h.cylinder = figure('MenuBar', 'none','units','pixels','Position', [screen_xpos screen_ypos total_screen],... % [x,y,width, height][0 0 1500 850]
    'name','Cylinder test','numbertitle','off','Resize', 'off'); 

    Start_new = uicontrol('Style', 'pushbutton', 'String', 'New analysis',...
        'Position', [20 150 190 20],...
        'Callback', @new); 
    
    left_button = uicontrol('Style', 'pushbutton', 'String', 'Left',...
        'Position', [20 100 50 20],...
        'Callback', 'record_value_left'); 

     both_button = uicontrol('Style', 'pushbutton', 'String', 'Both',...
        'Position', [20+50+20 100 50 20],...
        'Callback', 'record_value_both');    
    
     right_button = uicontrol('Style', 'pushbutton', 'String', 'right',...
        'Position', [20+50*2+20*2 100 50 20],...
        'Callback', 'record_value_right');    
    
 
    
    left_cancel = uicontrol('Style', 'pushbutton', 'String', 'cancel L',...
        'Position', [20 50 50 20],...
        'Callback', 'cancel_left'); 
    
    both_cancel= uicontrol('Style', 'pushbutton', 'String', 'cancel both',...
        'Position', [20+50+20 50 50 20],...
        'Callback', 'cancel_left'); 
    
    
    right_cancel = uicontrol('Style', 'pushbutton', 'String', 'cancel R',...
        'Position', [20+50*2+20*2 50 50 20],...
        'Callback', 'cancel_right'); 
    
   
    function new(source, eventdata)
        assignin('base','touches_left', [])
        assignin('base','touches_right', [])
    end

    
end
