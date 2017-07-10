function varargout = Convolution2DViewer(varargin)
% CONVOLUTION2DVIEWER MATLAB code for Convolution2DViewer.fig
%      CONVOLUTION2DVIEWER, by itself, creates a new CONVOLUTION2DVIEWER or raises the existing
%      singleton*.
%
%      H = CONVOLUTION2DVIEWER returns the handle to a new CONVOLUTION2DVIEWER or the handle to
%      the existing singleton*.
%
%      CONVOLUTION2DVIEWER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVOLUTION2DVIEWER.M with the given input arguments.
%
%      CONVOLUTION2DVIEWER('Property','Value',...) creates a new CONVOLUTION2DVIEWER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Convolution2DViewer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Convolution2DViewer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Convolution2DViewer

% Last Modified by GUIDE v2.5 09-Jul-2017 23:07:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Convolution2DViewer_OpeningFcn, ...
                   'gui_OutputFcn',  @Convolution2DViewer_OutputFcn, ...
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


% --- Executes just before Convolution2DViewer is made visible.
function Convolution2DViewer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Convolution2DViewer (see VARARGIN)

% Choose default command line output for Convolution2DViewer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Convolution2DViewer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Convolution2DViewer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
