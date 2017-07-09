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
    showConvolutionResult(handles);

function ImpulseResponse_Callback(hObject, eventdata, handles)

function ImpulseResponse_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function showOnAxis(values, axesId)
    axes(axesId);
    stem(1:length(values), values, 'filled'); 
    sb = StemBounds(values);
    b = bounds(sb);
    axis(b);


function showSignal(handles)
    signalY = str2num(get(handles.signal, 'String'));
    showOnAxis(signalY, handles.SignalAxes);
     
function showImpulseResponse(handles)
    impulseResponseY = str2num(get(handles.ImpulseResponse, 'String'));
    showOnAxis(impulseResponseY, handles.ImpulseResponseAxes);
    
function showConvolutionResult(handles)
    signal = str2num(get(handles.signal, 'String'));
    ir = str2num(get(handles.ImpulseResponse, 'String')); 
    c = Convolution(signal, ir);
    convolutionResult = doConvolution2(c); 
    showOnAxis(convolutionResult, handles.ConvolutionAxes);   

function generateSignalButton_Callback(hObject, eventdata, handles)
    signalValue = mat2str(randi(15,1,12));
    set(handles.signal,'string',signalValue);
    showSignal(handles);

function generateImpulseResponse_Callback(hObject, eventdata, handles)
    irValue = mat2str(randi(15,1,8));
    set(handles.ImpulseResponse,'string',irValue);
    showImpulseResponse(handles);

