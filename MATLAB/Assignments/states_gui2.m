function varargout = states_gui2(varargin)
% STATES_GUI2 MATLAB code for states_gui2.fig
%      STATES_GUI2, by itself, creates a new STATES_GUI2 or raises the existing
%      singleton*.
%
%      H = STATES_GUI2 returns the handle to a new STATES_GUI2 or the handle to
%      the existing singleton*.
%
%      STATES_GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STATES_GUI2.M with the given input arguments.
%
%      STATES_GUI2('Property','Value',...) creates a new STATES_GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before states_gui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to states_gui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help states_gui2

% Last Modified by GUIDE v2.5 07-Nov-2015 17:04:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @states_gui2_OpeningFcn, ...
                   'gui_OutputFcn',  @states_gui2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

function states_gui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to states_gui2 (see VARARGIN)

% Choose default command line output for states_gui2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Did this before we learned IO. Can't bring myself to delete it
statelist = {'Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming'};
regionlist = {'Southeast','Pacific','Southwest','Southeast','West','West','Northeast','Northeast','Southeast','Southeast','Pacific','West','Midwest','Midwest','Midwest','Midwest','Southeast','Southeast','Northeast','Northeast','Northeast','Midwest','Midwest','Southeast','Midwest','West','Midwest','West','Northeast','Northeast','Southwest','Northeast','Southeast','Midwest','Midwest','Southwest','West','Northeast','Northeast','Southeast','Midwest','Southeast','Southwest','West','Northeast','Southeast','West','Southeast','Midwest','West'};
abbvlist = {'AL','AK','AZ','AR','CA','CO','CT','DE','FL','GA','HI','ID','IL','IN','IA','KS','KY','LA','ME','MD','MA','MI','MN','MS','MO','MT','NE','NV','NH','NJ','NM','NY','NC','ND','OH','OK','OR','PA','RI','SC','SD','TN','TX','UT','VT','VA','WA','WV','WI','WY'};
capitals = {'Montgomery','Juneau','Phoenix','Little Rock','Sacramento','Denver','Hartford','Dover','Tallahassee','Atlanta','Honolulu','Boise','Springfield','Indianapolis','Des Moines','Topeka','Frankfort','Baton Rouge','Augusta','Annapolis','Boston','Lansing','Saint Paul','Jackson','Jefferson City','Helena','Lincoln','Carson City','Concord','Trenton','Santa Fe','Albany','Raleigh','Bismarck','Columbus','Oklahoma City','Salem','Harrisburg','Providence','Columbia','Pierre','Nashville','Austin','Salt Lake City','Montpelier','Richmond','Olympia','Charleston','Madison','Cheyenne'};
yearslist = {1819,1959,1912,1836,1850,1876,1788,1787,1845,1788,1959,1890,1818,1816,1846,1861,1792,1812,1820,1788,1788,1837,1858,1817,1821,1889,1867,1864,1788,1787,1912,1788,1789,1889,1803,1907,1859,1787,1790,1788,1889,1796,1845,1896,1791,1788,1889,1863,1848,1890};
populationlist = {4.85,0.74,6.73,2.97,38.8,5.35,3.6,0.94,19.89,10.1,1.42,1.63,12.88,6.6,3.11,2.9,4.41,4.65,1.33,5.98,6.75,9.91,5.46,2.99,6.06,1.02,1.88,2.84,1.33,8.94,2.09,19.75,9.94,0.74,11.59,3.88,3.97,12.79,1.05,4.83,0.85,6.55,26.96,2.94,0.63,8.33,7.062,1.85,5.76,0.58};
birdlist = {'Yellowhammer','Willow ptarmigan','Cactus Wren','Northern mockingbird','Eschscholzia californica','Lark bunting','American Robin','Delaware Blue Hen','Northern mockingbird','Brown thrasher','Nene','Mountain bluebird','Northern Cardinal','Cardinal','American Goldfinch','Western Meadowlark','Cardinal','Brown Pelican','Black-capped chickadee','Baltimore oriole','Domesticated Turkey','American Robin','Great northern loon','Northern mockingbird','Eastern bluebird','Western Meadowlark','Western Meadowlark','Mountain bluebird','Purple finch','American Goldfinch','Greater Roadrunner','Eastern bluebird','Cardinal','Western Meadowlark','Cardinal','Scissor-tailed flycatcher','Western Meadowlark','Ruffed grouse','Rhode island red','Domesticated Turkey','Ring-necked Pheasant','Northern mockingbird','Northern mockingbird','California gull','Hermit thrush','Cardinal','American Goldfinch','Northern Cardinal','American robin','Western Meadowlark'};
flowerlist = {'Camellia','Forget-me-not','Saguaro blossom','Apple blossom','California quail','Colorado Blue Columbine','Kalmia latifolia','Peach Blossom','Orange Blossom','Rosa laevigata','Hawaiian Hibiscus','Philadelphus lewisii','Viola','Peony','Rosa arkansana','Wild Sunflower','Goldenrod','Magnolia','White Pine Cone','Rudbeckia hirta','Epigaea repens','Apple blossom','Cypripedium reginae','Magnolia','Crataegus puntata','Bitterroot','Goldenrod','Sagebrush','Purple lilac','Viola sororia','Yucca flower','Rose','Cornus florida','Rosa arkansana','Scarlet Carnation','Rosa Oklahoma','Oregon grape','Kalmia latifolia','Viola','Gelsemium sempervirens','American Pasque flower','Iris','bluebonnett','Calochortus nuttallii','Red clover','Cornus florida','Rhododendron macrophyllum','Rhododendrun','Viola sororia','Castilleja linariifolia'};

% Creates structure for all the state data
for i = 1:50
    states(i) = struct('state', statelist(i), 'region', regionlist(i), 'abbv', abbvlist(i), 'capital', capitals(i), 'year', yearslist(i), 'pop', populationlist(i), 'bird', birdlist(i), 'flower', flowerlist(i));
end

% Initializes cell arrays for state names paired with region
southeastlist = {};
pacificlist = {};
southwestlist = {};
westlist = {};
midwestlist = {};

% Assigns state name to region based on content of region section in
% structure
for i = 1:50
    if strcmp(states(i).region,'Southeast')
        southeastlist{end+1} = states(i).state;
    elseif strcmp(states(i).region,'Pacific')
        pacificlist{end+1} = states(i).state;
    elseif strcmp(states(i).region,'Southwest')
        southwestlist{end+1} = states(i).state;
    elseif strcmp(states(i).region,'West')
        westlist{end+1} = states(i).state;
    elseif strcmp(states(i).region,'Midwest')
        midwestlist{end+1} = states(i).state;
    end
end

% Allows structures to be accessed in other functions
handles.southeastlist = southeastlist;
handles.pacificlist = pacificlist;
handles.southwestlist = southwestlist;
handles.westlist = westlist;
handles.midwestlist = midwestlist;
handles.states = states;
guidata(hObject, handles); % Updates handles with the new variables

% UIWAIT makes states_gui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = states_gui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in regionpick
function regionpick_Callback(hObject, eventdata, handles)
% hObject    handle to regionpick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns regionpick contents as cell array
%        contents{get(hObject,'Value')} returns selected item from regionpick

str = get(hObject, 'String'); % Gets the string of the selected region
val = get(hObject, 'Value'); % Gets the location of the selected region in the list

% Changes state list based on the selected region
switch str{val}
    case 'Select a region'
        set(handles.stateselect,'String','Please select a region');
        set(handles.stateselect,'Value',1); % Have to change Value each time or the list will disappear due to size problems (i.e. 5 items in a Value 2 list)
    case 'Southeast'
        set(handles.stateselect,'String',handles.southeastlist);
        new_size = size(handles.southeastlist);
        new_val = new_size(1,1);                   % How to change Value
        set(handles.stateselect,'Value',new_val);
    case 'Pacific'
        set(handles.stateselect,'String',handles.pacificlist);
        new_size = size(handles.pacificlist);
        new_val = new_size(1,1);
        set(handles.stateselect,'Value',new_val);
    case 'Southwest'
        set(handles.stateselect,'String',handles.southwestlist);
        new_size = size(handles.southwestlist);
        new_val = new_size(1,1);
        set(handles.stateselect,'Value',new_val);
    case 'West'
        set(handles.stateselect,'String',handles.westlist);
        new_size = size(handles.westlist);
        new_val = new_size(1,1);
        set(handles.stateselect,'Value',new_val);
    case 'Midwest'
        set(handles.stateselect,'String',handles.midwestlist);
        new_size = size(handles.midwestlist);
        new_val = new_size(1,1);
        set(handles.stateselect,'Value',new_val);
end

% --- Executes during object creation, after setting all properties.
function regionpick_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regionpick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in stateselect.
function stateselect_Callback(hObject, eventdata, handles)
% hObject    handle to stateselect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns stateselect contents as cell array
%        contents{get(hObject,'Value')} returns selected item from stateselect
str = get(hObject, 'String');  % Get the selected text
handles.chosen = str;          % Used in push button
val = get(hObject, 'Value');   % Get the location of the selected text in the list
handles.chosenval = val;       % Used in push button

% Adding the data to the cell array made in stateselect_CreateFcn
for i = 1:50
    if(strcmp(str{val}, handles.states(i).state))
        handles.actualdisplayinfo{1} = strcat(handles.actualdisplayinfo{1},handles.states(i).state);
        handles.actualdisplayinfo{2} = strcat(handles.actualdisplayinfo{2},handles.states(i).region);
        handles.actualdisplayinfo{3} = strcat(handles.actualdisplayinfo{3},handles.states(i).abbv);
        handles.actualdisplayinfo{4} = strcat(handles.actualdisplayinfo{4},handles.states(i).capital);
        handles.actualdisplayinfo{5} = strcat(handles.actualdisplayinfo{5},num2str(handles.states(i).pop));
    end
end

set(handles.informationbox,'String',handles.actualdisplayinfo); % Display the data in the box
str = get(hObject, 'String'); % Get new str and val if another state is selected
handles.chosen = str; 
val = get(hObject, 'Value');
handles.chosenval = val;
handles.actualdisplayinfo = handles.displayinfo; % reset the state specific values
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function stateselect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stateselect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Create reference cell array and the cell array that will be edited and
% displayed
displayinfo = {'State: ', 'Region: ', 'Abbreviation: ', 'Capital: ', 'Population (millions): '};
actualdisplayinfo = {'State: ', 'Region: ', 'Abbreviation: ', 'Capital: ', 'Population (millions): '};

% Allows the variables to be used in other functions
handles.displayinfo = displayinfo;
handles.actualdisplayinfo = actualdisplayinfo; 
guidata(hObject, handles);


% --- Executes on button press in pressfordetails.
function pressfordetails_Callback(hObject, eventdata, handles)
% hObject    handle to pressfordetails (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pressfordetails

% Create reference cell array and the cell array that will be edited and
% displayed
extradisplayinfo = {'Year Made State: ', 'Bird: ', 'Flower: '};
actualextradisplayinfo = {'Year Made State: ', 'Bird: ', 'Flower: '};
chosen = handles.chosen;       % Referencing data found in stateselect_Callback
chosenval = handles.chosenval;

% Adding the data to the actualextradisplayinfo cell array
for i = 1:50
    if(strcmp(chosen{chosenval}, handles.states(i).state))
        actualextradisplayinfo{1} = strcat(actualextradisplayinfo{1},num2str(handles.states(i).year));
        actualextradisplayinfo{2} = strcat(actualextradisplayinfo{2},handles.states(i).bird);
        actualextradisplayinfo{3} = strcat(actualextradisplayinfo{3},handles.states(i).flower);
    end
end

set(handles.additionalinfobox, 'String', actualextradisplayinfo); % Displays data

% Hides text if button unselected
if get(hObject, 'Value') == 0
    set(handles.additionalinfobox, 'String', '');
end

chosen = handles.chosen;
chosenval = handles.chosenval;
actualextradisplayinfo = extradisplayinfo; % Resets data
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4
axes(hObject)
flag = imread('flag.jpg');
image(flag)
axis off
axis image
