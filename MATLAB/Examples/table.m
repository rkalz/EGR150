function varargout = table(varargin)
% TABLE MATLAB code for table.fig
%      TABLE, by itself, creates a new TABLE or raises the existing
%      singleton*.
%
%      H = TABLE returns the handle to a new TABLE or the handle to
%      the existing singleton*.
%
%      TABLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TABLE.M with the given input arguments.
%
%      TABLE('Property','Value',...) creates a new TABLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before table_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to table_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help table

% Last Modified by GUIDE v2.5 02-Nov-2015 16:35:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @table_OpeningFcn, ...
                   'gui_OutputFcn',  @table_OutputFcn, ...
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


% --- Executes just before table is made visible.
function table_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to table (see VARARGIN)

% Choose default command line output for table
handles.output = hObject;

FileID = fopen('gui_table.csv', 'r');
Content = textscan(FileID, '%s%s%s', 'delimiter', ',') % file, columns, separation type, separator
fclosr(FileID);
for index = 1:size(Content{1,1}, 1)
    GradesInfo{index, 1} = Content{1,1}{index};
    GradesInfo{index, 2} = Content{1,2}{index};
    GradesInfo{index, 3} = Content{1,3}{index};
end

set(handles.figure1, 'Data', GradesInfo);


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes table wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = table_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

