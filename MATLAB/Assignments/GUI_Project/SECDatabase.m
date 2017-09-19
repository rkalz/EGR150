function varargout = SECDatabase(varargin)
% SECDATABASE MATLAB code for SECDatabase.fig
%      SECDATABASE, by itself, creates a new SECDATABASE or raises the existing
%      singleton*.
%
%      H = SECDATABASE returns the handle to a new SECDATABASE or the handle to
%      the existing singleton*.
%
%      SECDATABASE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SECDATABASE.M with the given input arguments.
%
%      SECDATABASE('Property','Value',...) creates a new SECDATABASE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SECDatabase_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SECDatabase_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SECDatabase

% Last Modified by GUIDE v2.5 28-Nov-2015 17:48:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SECDatabase_OpeningFcn, ...
                   'gui_OutputFcn',  @SECDatabase_OutputFcn, ...
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


% --- Executes just before SECDatabase is made visible.
function SECDatabase_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SECDatabase (see VARARGIN)

% Choose default command line output for SECDatabase
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Cell Arrays containing teams for each division
secEastList = {'University of Florida','University of Georgia','University of Kentucky','University of Missouri','University of South Carolina','University of Tennessee','Vanderbilt University'};
secWestList = {'University of Alabama','University of Arkansas','Auburn University','Louisiana State University','University of Mississippi','Mississippi State University','Texas A&M University'};

% Cell Arrays containing data that will be used
teamList = {'University of Alabama','University of Arkansas','Auburn University','University of Florida','University of Georgia','University of Kentucky','Louisiana State University','University of Mississippi','Mississippi State University','University of Missouri','University of South Carolina','University of Tennessee','Texas A&M University','Vanderbilt University'};
locationList = {'Tuscaloosa, AL','Fayetteville, AK','Auburn, AL','Gainesville, FL','Athens, GA','Lexington, KY','Baton Rouge, LA','Oxford, MS','Starkville, MS','Columbia, MO','Columbia, SC','Knoxville, TN','College Station, TX','Nashville, TN'};
foundedList = {1831,1871,1856,1853,1785,1865,1860,1848,1878,1839,1801,1794,1876,1873};
enrollmentList = {37100,26301,25912,51474,35197,29385,31527,23096,20138,35425,31980,27410,62185,12686};
nicknameList = {'Crimson Tide','Razorbacks','Tigers','Gators','Bulldogs','Wildcats','Tigers','Rebels','Bulldogs','Tigers','Gamecocks','Volunteers','Aggies','Commodores'};
joinedList = {1932,1991,1932,1932,1932,1932,1932,1932,1932,2012,1991,1932,2012,1932};
logoList = {'alabama.png','arkansas.png','auburn.png','florida.png','georgia.png','kentucky.png','lsu.png','olemiss.png','miss_state.png','missouri.png','southcarolina.png','tennessee.png','texas_am.png','vanderbilt.png'};

% Populates a structure containing the data that will be used
for i = 1:14
    secData(i) = struct('name',teamList(i),'location',locationList(i),'founded',foundedList(i),'enrollment',enrollmentList(i),'nickname',nicknameList(i),'joined',joinedList(i),'logo',logoList(i));
end

% Cell array of leaderboard info that will be used
handles.secEast2014 = {'University of Missouri','University of Georgia','University of Florida','University of Tennessee','University of South Carolina','University of Kentucky','Vanderbilt University'};
handles.secEast2013 = {'University of Missouri','University of South Carolina','University of Georgia','Vanderbilt University','University of Florida','University of Tennessee','University of Kentucky'};
handles.secEast2012 = {'University of Georgia','University of Florida','University of South Carolina','Vanderbilt University','University of Missouri','University of Tennessee','University of Kentucky'};
handles.secEast2011 = {'University of Georgia','University of South Carolina','University of Florida','Vanderbilt University','University of Kentucky','University of Tennessee',''};
handles.secEast2010 = {'University of South Carolina','University of Florida','University of Georgia','University of Tennessee','University of Kentucky','Vanderbilt University',''};
handles.secEast2009 = {'University of Florida','University of Georgia','University of Tennessee','University of Kentucky','University of South Carolina','Vanderbilt University',''};
handles.secEast2008 = {'University of Florida','University of Georgia','University of South Carolina','Vanderbilt University','University of Tennessee','University of Kentucky',''};
handles.secEast2007 = {'University of Georgia','University of Tennessee','University of Florida','University of Kentucky','University of South Carolina','Vanderbilt University',''};
handles.secEast2006 = {'University of Florida','University of Tennessee','University of Georgia','University of Kentucky','University of South Carolina','Vanderbilt University',''};
handles.secEast2005 = {'University of Georgia','University of Florida','University of South Carolina','University of Tennessee','Vanderbilt University','University of Kentucky',''};
handles.secEast2004 = {'University of Tennessee','University of Georgia','University of Florida','University of South Carolina','University of Kentucky','Vanderbilt University',''};

handles.secWest2014 = {'University of Alabama','Mississippi State University','University of Mississippi','Auburn University','Louisiana State University','Texas A&M University','University of Arkansas'};
handles.secWest2013 = {'Auburn University','University of Alabama','Louisiana State University','Texas A&M University','Mississippi State University','University of Mississippi','University of Arkansas'};
handles.secWest2012 = {'University of Alabama','Louisiana State University','Texas A&M University','Mississippi State University','University of Mississippi','University of Arkansas','Auburn University'};
handles.secWest2011 = {'Louisiana State University','University of Alabama','University of Arkansas','Auburn University','Mississippi State University','University of Mississippi',''};
handles.secWest2010 = {'Auburn University','University of Arkansas','Louisiana State University','University of Alabama','Mississippi State University','University of Mississippi',''};
handles.secWest2009 = {'University of Alabama','Louisiana State University','University of Mississippi','University of Arkansas','Auburn University','Mississippi State University',''};
handles.secWest2008 = {'University of Alabama','University of Mississippi','Louisiana State University','University of Arkansas','Auburn University','Mississippi State University',''};
handles.secWest2007 = {'Louisiana State University','Auburn University','University of Alabama','University of Arkansas','Mississippi State University','University of Mississippi',''};
handles.secWest2006 = {'University of Arkansas','Auburn University','Louisiana State University','University of Alabama','University of Mississippi','Mississippi State University',''};
handles.secWest2005 = {'Auburn University','Louisiana State University','University of Alabama','University of Arkansas','Mississippi State University','University of Mississippi',''};
handles.secWest2004 = {'Auburn University','Louisiana State University','University of Alabama','University of Arkansas','University of Mississippi','Mississippi State University',''};

% Cell array creating leaderboard history for each division
secEastRanks = {handles.secEast2014,handles.secEast2013,handles.secEast2012,handles.secEast2011,handles.secEast2010,handles.secEast2009,handles.secEast2008,handles.secEast2007,handles.secEast2006,handles.secEast2005,handles.secEast2004};
secWestRanks = {handles.secWest2014,handles.secWest2013,handles.secWest2012,handles.secWest2011,handles.secWest2010,handles.secWest2009,handles.secWest2008,handles.secWest2007,handles.secWest2006,handles.secWest2005,handles.secWest2004};

% UIWAIT makes SECDatabase wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% Allows variables to be accessed outside of this function
handles.secEastList = secEastList;
handles.secWestList = secWestList;
handles.secData = secData;
handles.secEastRanks = secEastRanks;
handles.secWestRanks = secWestRanks;

guidata(hObject, handles); % Updates handles with the new variables


% --- Outputs from this function are returned to the command line.
function varargout = SECDatabase_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in teamSelect.
function teamSelect_Callback(hObject, eventdata, handles)
% hObject    handle to teamSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns teamSelect contents as cell array
%        contents{get(hObject,'Value')} returns selected item from teamSelect

% Gets the selected team and allows it to be referenecd in other functions
str = get(hObject, 'String');
handles.selectedTeam = str;
val = get(hObject, 'Value');
handles.selectedTeamValue = val;

% Updates the team logo based on the selected team
axes(handles.teamLogo);
for i = 1:14
    if strcmp(str{val},handles.secData(i).name) % Compares selected team name to a name in the structure
        imshow(handles.secData(i).logo);        % Gets the string containing the file name of the logo based on the selected team name
    end
end

% Updates the graph containing information on the rank history
axes(handles.rankHistory);
x = [2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004];
ranks = [0,0,0,0,0,0,0,0,0,0,0];
if strcmp(handles.division{handles.divisionval},'Eastern Division') % Differentiates between divisions
    divbase = handles.secEastRanks;
else
    divbase = handles.secWestRanks;
end
for i = 1:11
    for j = 1:7
        if strcmp(str{val},divbase{i}(j))
            ranks(i) = j;                   % finds the team's position in each year's leaderboard, returns that as the rank for that year
        end
    end
end

negranks = -ranks;                       % Allows the ranks to be shown in inverse order (1 on top)
handles.showData = plot(x,negranks,'*'); % made a variable so it can be hidden by a button 

axis([2004,2014,-7,1]);
set(gca,'YTickLabelMode','Manual');      % Defines the scale and hides the Y values
set(gca,'YTick',[]);

% Shows the team rank next to the point on the graph, made variable to
% hide when button is selected
handles.showText1 = text(2014,negranks(1),strcat('\leftarrow',num2str(ranks(1))));
handles.showText2 = text(2013,negranks(2),strcat('\leftarrow',num2str(ranks(2))));
handles.showText3 = text(2012,negranks(3),strcat('\leftarrow',num2str(ranks(3))));
handles.showText4 = text(2011,negranks(4),strcat('\leftarrow',num2str(ranks(4))));
handles.showText5 = text(2010,negranks(5),strcat('\leftarrow',num2str(ranks(5))));
handles.showText6 = text(2009,negranks(6),strcat('\leftarrow',num2str(ranks(6))));
handles.showText7 = text(2008,negranks(7),strcat('\leftarrow',num2str(ranks(7))));
handles.showText8 = text(2007,negranks(8),strcat('\leftarrow',num2str(ranks(8))));
handles.showText9 = text(2006,negranks(9),strcat('\leftarrow',num2str(ranks(9))));
handles.showText10 = text(2005,negranks(10),strcat('\leftarrow',num2str(ranks(10))));
handles.showText11 = text(2004,negranks(11),strcat('\leftarrow',num2str(ranks(11))));

% Hides all the data (button showing data is off by default)
set(gca,'Visible','Off');
set(handles.showData,'Visible','Off')
set([handles.showText1,handles.showText2,handles.showText3,handles.showText4,handles.showText5,handles.showText6,handles.showText7,handles.showText8,handles.showText9,handles.showText10,handles.showText11],'Visible','Off');

% Populates cell array that contains info that will be shown
for i = 1:14
    if strcmp(str{val},handles.secData(i).name)
        handles.infoBox(1) = strcat(handles.defaultInfoBox(1),handles.secData(i).name);
        handles.infoBox(2) = strcat(handles.defaultInfoBox(2),handles.secData(i).location);
        handles.infoBox(3) = strcat(handles.defaultInfoBox(3),handles.secData(i).nickname);
    end
end

% Displays cell array data in text box
set(handles.teamInformation,'String',handles.infoBox);

% Resets displayed information when something else is selected
str = get(hObject, 'String');
handles.selectedTeam = str;
val = get(hObject, 'Value');
handles.selectedTeamValue = val;
handles.infoBox = handles.defaultInfoBox;

% Updates handles for new/modified variables
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function teamSelect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to teamSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Defines the cell arrays that will be used to hold the displayed data
handles.defaultInfoBox = {'Name: ', 'Location: ', 'Nickname: '};
handles.infoBox = handles.defaultInfoBox;
handles.defaultAdditionalInfoBox = {'Founded: ', 'Enrollment: ', 'Joined SEC: '};
handles.additionalInfoBox = handles.defaultAdditionalInfoBox;

guidata(hObject, handles);


% --- Executes on button press in showRank.
function showRank_Callback(hObject, eventdata, handles)
% hObject    handle to showRank (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of showRank

% Allows modification of rankHistory axis
axes(handles.rankHistory);

% Determines whether or not button is pressed
handles.rankShowButton = get(hObject,'Value');

% If button is pressed, show info. Else, hide info.
if get(hObject,'Value') == 1
    set(handles.rankHistory,'Visible','On');
    set(handles.yearLeaderboardSelect,'Visible','On');
    set(handles.teamRankCompare,'Visible','On');
    set(handles.leaderboardTitle,'Visible','On');
    set(gca,'Visible','On');
    set(handles.showData,'Visible','On')
    set([handles.showText1,handles.showText2,handles.showText3,handles.showText4,handles.showText5,handles.showText6,handles.showText7,handles.showText8,handles.showText9,handles.showText10,handles.showText11],'Visible','On');
else
    set(handles.rankHistory,'Visible','Off');
    set(handles.yearLeaderboardSelect,'Visible','Off');
    set(handles.teamRankCompare,'Visible','Off');
    set(handles.leaderboardTitle,'Visible','Off');
    set(gca,'Visible','Off');
    set(handles.showData,'Visible','Off')
    set([handles.showText1,handles.showText2,handles.showText3,handles.showText4,handles.showText5,handles.showText6,handles.showText7,handles.showText8,handles.showText9,handles.showText10,handles.showText11],'Visible','Off');
end


% --- Executes on selection change in yearLeaderboardSelect.
function yearLeaderboardSelect_Callback(hObject, eventdata, handles)
% hObject    handle to yearLeaderboardSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns yearLeaderboardSelect contents as cell array
%        contents{get(hObject,'Value')} returns selected item from yearLeaderboardSelect

% Gets the selected string in the dropdown box, the selected division from
% divisionSelect, and defines variables for comparison
str = get(hObject,'String');
val = get(hObject,'Value');
division = handles.division;
divisionval = handles.divisionval;
east = 'Eastern Division';
west = 'Western Division';

% Finds matching year and division to display correct leaderboards

if strcmp(str{val},'2014') && strcmp(division{divisionval},east)       
    set(handles.teamRankCompare,'String',handles.secEast2014)
    set(handles.leaderboardTitle,'String','2014 SEC Eastern Rankings')
elseif strcmp(str{val},'2013') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2013)
    set(handles.leaderboardTitle,'String','2013 SEC Eastern Rankings')
elseif strcmp(str{val},'2012') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2012)
    set(handles.leaderboardTitle,'String','2012 SEC Eastern Rankings')
elseif strcmp(str{val},'2011') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2011)
    set(handles.leaderboardTitle,'String','2011 SEC Eastern Rankings')
elseif strcmp(str{val},'2010') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2010)
    set(handles.leaderboardTitle,'String','2010 SEC Eastern Rankings')
elseif strcmp(str{val},'2009') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2009)
    set(handles.leaderboardTitle,'String','2009 SEC Eastern Rankings')
elseif strcmp(str{val},'2008') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2008)
    set(handles.leaderboardTitle,'String','2008 SEC Eastern Rankings')
elseif strcmp(str{val},'2007') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2007)
    set(handles.leaderboardTitle,'String','2007 SEC Eastern Rankings')
elseif strcmp(str{val},'2006') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2006)
    set(handles.leaderboardTitle,'String','2006 SEC Eastern Rankings')
elseif strcmp(str{val},'2005') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2005)
    set(handles.leaderboardTitle,'String','2005 SEC Eastern Rankings')
elseif strcmp(str{val},'2004') && strcmp(division{divisionval},east)
    set(handles.teamRankCompare,'String',handles.secEast2004)
    set(handles.leaderboardTitle,'String','2004 SEC Eastern Rankings')
elseif strcmp(str{val},'2014') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2014)
    set(handles.leaderboardTitle,'String','2014 SEC Western Rankings')
elseif strcmp(str{val},'2013') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2013)
    set(handles.leaderboardTitle,'String','2013 SEC Western Rankings')
elseif strcmp(str{val},'2012') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2012)
    set(handles.leaderboardTitle,'String','2012 SEC Western Rankings')
elseif strcmp(str{val},'2011') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2011)
    set(handles.leaderboardTitle,'String','2011 SEC Western Rankings')
elseif strcmp(str{val},'2010') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2010)
    set(handles.leaderboardTitle,'String','2010 SEC Western Rankings')
elseif strcmp(str{val},'2009') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2009)
    set(handles.leaderboardTitle,'String','2009 SEC Western Rankings')
elseif strcmp(str{val},'2008') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2008)
    set(handles.leaderboardTitle,'String','2008 SEC Western Rankings')
elseif strcmp(str{val},'2007') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2007)
    set(handles.leaderboardTitle,'String','2007 SEC Western Rankings')
elseif strcmp(str{val},'2006') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2006)
    set(handles.leaderboardTitle,'String','2006 SEC Western Rankings')
elseif strcmp(str{val},'2005') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2005)
    set(handles.leaderboardTitle,'String','2005 SEC Western Rankings')
elseif strcmp(str{val},'2004') && strcmp(division{divisionval},west)
    set(handles.teamRankCompare,'String',handles.secWest2004)
    set(handles.leaderboardTitle,'String','2004 SEC Western Rankings')
end


% --- Executes during object creation, after setting all properties.
function yearLeaderboardSelect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yearLeaderboardSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in showAdditionalInfo.
function showAdditionalInfo_Callback(hObject, eventdata, handles)
% hObject    handle to showAdditionalInfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of showAdditionalInfo

% Sets visibiliy additional information box based on selection
if get(hObject,'Value') == 1
    set(handles.additionalTeamInformation,'Visible','On');
else
    set(handles.additionalTeamInformation,'Visible','Off');
end

% Populates cell array with information based on the selected team
for i = 1:14
    if strcmp(handles.selectedTeam{handles.selectedTeamValue},handles.secData(i).name)
        handles.additionalInfoBox(1) = strcat(handles.defaultAdditionalInfoBox(1),num2str(handles.secData(i).founded));
        handles.additionalInfoBox(2) = strcat(handles.defaultAdditionalInfoBox(2),num2str(handles.secData(i).enrollment));
        handles.additionalInfoBox(3) = strcat(handles.defaultAdditionalInfoBox(3),num2str(handles.secData(i).joined));
    end
end

% Sets information box to display data
set(handles.additionalTeamInformation,'String',handles.additionalInfoBox);


% --- Executes on selection change in divisionSelect.
function divisionSelect_Callback(hObject, eventdata, handles)
% hObject    handle to divisionSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns divisionSelect contents as cell array
%        contents{get(hObject,'Value')} returns selected item from divisionSelect

% Gets the selected division and makes it available in other functions
str = get(hObject, 'String');
val = get(hObject, 'Value');
handles.division = str;
handles.divisionval = val;

% Changes the team selection list based on the selected region
switch str{val}
    case 'Select a division to begin'
        set(handles.teamSelect,'String','Please select a division');
        set(handles.teamSelect,'Value',1);
    case 'Eastern Division'
        set(handles.teamSelect,'String',handles.secEastList);
        newSize = size(handles.secEastList);
        newVal = newSize(1,2);
        set(handles.teamSelect,'Value',newVal);
    case 'Western Division'
        set(handles.teamSelect,'String',handles.secWestList);
        newSize = size(handles.secWestList);
        newVal = newSize(1,2);
        set(handles.teamSelect,'Value',newVal);
end

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function divisionSelect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to divisionSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function teamLogo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to teamLogo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate teamLogo

% Hides the axes of the team logo axis until a team is selected
axes(hObject);
axis off;


% --- Executes during object creation, after setting all properties.
function rankHistory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rankHistory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate rankHistory

% Sets the default conditions of the rankHistory axis
axes(hObject);
axis([2004,2014,-7,0]);
set(gca,'YTickLabelMode','Manual');
set(gca,'YTick',[]);


% --- Executes during object creation, after setting all properties.
function teamInformation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to teamInformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function secLogo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secLogo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate secLogo
axes(hObject);
secLogo = imread('sec.png');
image(secLogo);
axis off;
axis image;
