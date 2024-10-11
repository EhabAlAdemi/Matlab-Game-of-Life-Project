function varargout = GOL(varargin)
% GOL MATLAB code for GOL.fig
%      GOL, by itself, creates a new GOL or raises the existing
%      singleton*.



















%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GOL

% Last Modified by GUIDE v2.5 07-Dec-2022 23:19:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GOL_OpeningFcn, ...
                   'gui_OutputFcn',  @GOL_OutputFcn, ...
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


% --- Executes just before GOL is made visible.
function GOL_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GOL (see VARARGIN)

% Choose default command line output for GOL
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GOL wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GOL_OutputFcn(~, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Random.
function Random_Callback(hObject, eventdata, handles)
% hObject    handle to Random (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global random
axes(handles.Axes);
random = 1; % if set to one load a random matrix
findNeighbor;

% --- Executes during object creation, after setting all properties.
function Random_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Random (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Custom.
function Custom_Callback(hObject, eventdata, handles)
% hObject    handle to Custom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Axes);
maker;




% --- Executes on button press in Run.
function Run_Callback(hObject, eventdata, handles)
% hObject    handle to Run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global random
axes(handles.Axes);
random = 0; % if set to zero load a 2d matrix named "starting_world"
findNeighbor;


% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pause,'value',1)
