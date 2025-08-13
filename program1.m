function varargout = program1(varargin)
% PROGRAM1 MATLAB code for program1.fig
%      PROGRAM1, by itself, creates a new PROGRAM1 or raises the existing
%      singleton*.
%
%      H = PROGRAM1 returns the handle to a new PROGRAM1 or the handle to
%      the existing singleton*.
%
%      PROGRAM1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAM1.M with the given input arguments.
%
%      PROGRAM1('Property','Value',...) creates a new PROGRAM1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before program1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to program1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help program1

% Last Modified by GUIDE v2.5 13-Aug-2025 19:30:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @program1_OpeningFcn, ...
                   'gui_OutputFcn',  @program1_OutputFcn, ...
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


% --- Executes just before program1 is made visible.
function program1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to program1 (see VARARGIN)

% Choose default command line output for program1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes program1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = program1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Fs=1000;
t=0:1/Fs:1;
f=5;
s=sin(2*pi*f*t);
axes(handles.axes1),plot(s);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs=1000;
t=0:1/Fs:1;
f=5;
s1=square(2*pi*f*t);
axes(handles.axes2),plot(s1);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs=1000;
t=0:1/Fs:1;
f=5;
s2=sawtooth(2*pi*f*t);
axes(handles.axes3),plot(s2);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs=1000;
t=0:1/Fs:1;
f=5;
s=sin(2*pi*f*t);
s1=square(2*pi*f*t);
s2=sawtooth(2*pi*f*t);
com_sig=s+s1+s2;
axes(handles.axes4),plot(com_sig);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
