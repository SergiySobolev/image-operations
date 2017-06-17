function varargout = ConvolutionViewer(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ConvolutionViewer_OpeningFcn, ...
                   'gui_OutputFcn',  @ConvolutionViewer_OutputFcn, ...
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

function ConvolutionViewer_OpeningFcn(hObject, eventdata, handles, varargin)
    handles.output = hObject;
    guidata(hObject, handles);


function varargout = ConvolutionViewer_OutputFcn(hObject, eventdata, handles) 
    varargout{1} = handles.output;


function signal_Callback(hObject, eventdata, handles)

function signal_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in convolve.
function convolve_Callback(hObject, eventdata, handles)
    showSignal(handles);
    showImpulseResponse(handles);

function ImpulseResponse_Callback(hObject, eventdata, handles)

function ImpulseResponse_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function showSignal(handles)
    signalY = str2num(get(handles.signal, 'String'));
    axes(handles.SignalAxes);
    stem(signalY, 'filled');
    
function showImpulseResponse(handles)
    impulseResponseY = str2num(get(handles.ImpulseResponse, 'String'));
    axes(handles.ImpulseResponseAxes);
    stem(impulseResponseY, 'filled');    

        
    
 
