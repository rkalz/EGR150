function varargout = calculator_gui(varargin)
% CALCULATOR_GUI MATLAB code for calculator_gui.fig
%      CALCULATOR_GUI, by itself, creates a new CALCULATOR_GUI or raises the existing
%      singleton*.
%
%      H = CALCULATOR_GUI returns the handle to a new CALCULATOR_GUI or the handle to
%      the existing singleton*.
%
%      CALCULATOR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR_GUI.M with the given input arguments.
%
%      CALCULATOR_GUI('Property','Value',...) creates a new CALCULATOR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator_gui

% Last Modified by GUIDE v2.5 05-Oct-2015 13:21:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_gui_OutputFcn, ...
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


% --- Executes just before calculator_gui is made visible.
function calculator_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator_gui (see VARARGIN)

% Choose default command line output for calculator_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in push9.
function push9_Callback(hObject, eventdata, handles)
% hObject    handle to push9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '9')
set(handles.display, 'String', str)

% --- Executes on button press in push8.
function push8_Callback(hObject, eventdata, handles)
% hObject    handle to push8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '8')
set(handles.display, 'String', str)

% --- Executes on button press in push7.
function push7_Callback(hObject, eventdata, handles)
% hObject    handle to push7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '7')
set(handles.display, 'String', str)

% --- Executes on button press in pushEqual.
function pushEqual_Callback(hObject, eventdata, handles)
% hObject    handle to pushEqual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display, 'String')
str = eval(str)
set(handles.display, 'String', str)

% --- Executes on button press in push6.
function push6_Callback(hObject, eventdata, handles)
% hObject    handle to push6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '6')
set(handles.display, 'String', str)

% --- Executes on button press in push5.
function push5_Callback(hObject, eventdata, handles)
% hObject    handle to push5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '5')
set(handles.display, 'String', str)

% --- Executes on button press in push4.
function push4_Callback(hObject, eventdata, handles)
% hObject    handle to push4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '4')
set(handles.display, 'String', str)

% --- Executes on button press in pushDivide.
function pushDivide_Callback(hObject, eventdata, handles)
% hObject    handle to pushDivide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '/')
set(handles.display, 'String', str)

% --- Executes on button press in push3.
function push3_Callback(hObject, eventdata, handles)
% hObject    handle to push3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '3')
set(handles.display, 'String', str)

% --- Executes on button press in push2.
function push2_Callback(hObject, eventdata, handles)
% hObject    handle to push2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '2')
set(handles.display, 'String', str)

% --- Executes on button press in push1.
function push1_Callback(hObject, eventdata, handles)
% hObject    handle to push1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '1')
set(handles.display, 'String', str)

% --- Executes on button press in pushMultiply.
function pushMultiply_Callback(hObject, eventdata, handles)
% hObject    handle to pushMultiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '*')
set(handles.display, 'String', str)

% --- Executes on button press in push0.
function push0_Callback(hObject, eventdata, handles)
% hObject    handle to push0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '0')
set(handles.display, 'String', str)

% --- Executes on button press in pushMinus.
function pushMinus_Callback(hObject, eventdata, handles)
% hObject    handle to pushMinus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '-')
set(handles.display, 'String', str)

% --- Executes on button press in pushPlus.
function pushPlus_Callback(hObject, eventdata, handles)
% hObject    handle to pushPlus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, '+')
set(handles.display, 'String', str)

% --- Executes on button press in pushClear.
function pushClear_Callback(hObject, eventdata, handles)
% hObject    handle to pushClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.display, 'String', '')

% --- Executes on button press in pushPi.
function pushPi_Callback(hObject, eventdata, handles)
% hObject    handle to pushPi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = strcat(str, 'pi')
set(handles.display, 'String', str)

% --- Executes on button press in pushSin.
function pushSin_Callback(hObject, eventdata, handles)
% hObject    handle to pushSin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = ['sin(' str ')']
set(handles.display, 'String', str)

% --- Executes on button press in pushCos.
function pushCos_Callback(hObject, eventdata, handles)
% hObject    handle to pushCos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = ['cos(' str ')']
set(handles.display, 'String', str)

% --- Executes on button press in pushTan.
function pushTan_Callback(hObject, eventdata, handles)
% hObject    handle to pushTan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(handles.display,'String')
str = ['tan(' str ')']
set(handles.display, 'String', str)
