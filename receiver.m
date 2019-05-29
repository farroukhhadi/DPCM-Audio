function varargout = receiver(varargin)
% RECEIVER MATLAB code for receiver.fig
%      RECEIVER, by itself, creates a new RECEIVER or raises the existing
%      singleton*.
%
%      H = RECEIVER returns the handle to a new RECEIVER or the handle to
%      the existing singleton*.
% 
%      RECEIVER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECEIVER.M with the given input arguments.
%
%      RECEIVER('Property','Value',...) creates a new RECEIVER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before receiver_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to receiver_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help receiver

% Last Modified by GUIDE v2.5 27-May-2019 22:02:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @receiver_OpeningFcn, ...
                   'gui_OutputFcn',  @receiver_OutputFcn, ...
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


% --- Executes just before receiver is made visible.
function receiver_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to receiver (see VARARGIN)

% Choose default command line output for receiver
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes receiver wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = receiver_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ipa_Callback(hObject, eventdata, handles)
% hObject    handle to ipa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ipa as text
%        str2double(get(hObject,'String')) returns contents of ipa as a double


% --- Executes during object creation, after setting all properties.
function ipa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ipa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sizei_Callback(hObject, eventdata, handles)
% hObject    handle to sizei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sizei as text
%        str2double(get(hObject,'String')) returns contents of sizei as a double


% --- Executes during object creation, after setting all properties.
function sizei_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sizei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in receiveInfo.
function receiveInfo_Callback(hObject, eventdata, handles)
% hObject    handle to receiveInfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
si=str2num(get(handles.sizei,'String'));
ip=get(handles.ipa,'String');
tcpipclient=tcpip(ip,55000,'NetworkRole','Client');
set(tcpipclient,'InputBufferSize',si*8);
set(tcpipclient,'Timeout',30);
fopen(tcpipclient);
m=fread(tcpipclient,si,'double');
fclose(tcpipclient);

ysize=m(1:3);
audio=m(4);
audioFS=m(5);
fs=m(6);
len=m(7);
lev=m(8);
nt=m(9);
predictor=m(10:(10+nt));
codebook=m((10+nt+1):(length(m)));
handles.ysize=ysize;
set(handles.edit3,'String','Audio');
axes(handles.axes1)
cla reset;
axes(handles.axes2)
cla reset;
handles.audio=audio;
handles.audioFS=audioFS;
set(handles.fsampling,'String',num2str(fs));
set(handles.levels,'String',num2str(lev));
set(handles.nta,'String',num2str(nt));
set(handles.Weights,'String',num2str(predictor'));

handles.len=len;
handles.fs=fs;
handles.predictor=predictor;

handles.codebook=codebook;
set(handles.disp,'String','Information Received')
guidata(hObject,handles);



function fsampling_Callback(hObject, eventdata, handles)
% hObject    handle to fsampling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fsampling as text
%        str2double(get(hObject,'String')) returns contents of fsampling as a double


% --- Executes during object creation, after setting all properties.
function fsampling_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fsampling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function levels_Callback(hObject, eventdata, handles)
% hObject    handle to levels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of levels as text
%        str2double(get(hObject,'String')) returns contents of levels as a double


% --- Executes during object creation, after setting all properties.
function levels_CreateFcn(hObject, eventdata, handles)
% hObject    handle to levels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nta_Callback(hObject, eventdata, handles)
% hObject    handle to nta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nta as text
%        str2double(get(hObject,'String')) returns contents of nta as a double


% --- Executes during object creation, after setting all properties.
function nta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Weights_Callback(hObject, eventdata, handles)
% hObject    handle to Weights (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Weights as text
%        str2double(get(hObject,'String')) returns contents of Weights as a double


% --- Executes during object creation, after setting all properties.
function Weights_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Weights (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in receiveAudio.
function receiveAudio_Callback(hObject, eventdata, handles)
% hObject    handle to receiveAudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
len=handles.len;
ip=get(handles.ipa,'String');
tcpipclient=tcpip(ip,55000, 'NetworkRole','Client');
set(tcpipclient,'InputBufferSize',len*8);
set(tcpipclient,'Timeout',1000);
fopen(tcpipclient);
y=fread(tcpipclient,len,'double');
fclose(tcpipclient);
handles.y=y;
audio=handles.audio;
fs=handles.fs;


    t=0:1/fs:((len/fs)-1/fs);
    axes(handles.axes1)
    plot(t,y)
    set(handles.disp,'String','Encoded Audio Received')

guidata(hObject,handles)


% --- Executes on button press in decode.
function decode_Callback(hObject, eventdata, handles)
% hObject    handle to decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
audio=handles.audio;
y=handles.y;
codebook=handles.codebook;
predictor=handles.predictor;

    decodedy=dpcmdeco(y, codebook, predictor);
    handles.decodedy=decodedy;
    guidata(hObject,handles)


set(handles.disp,'String','Decode Complete')


% --- Executes on button press in plotDecoded.
function plotDecoded_Callback(hObject, eventdata, handles)
% hObject    handle to plotDecoded (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
audio=handles.audio;

    decodedy=handles.decodedy;
    fs=handles.fs;
    len=handles.len;
    t=0:1/fs:((len/fs)-1/fs);
    axes(handles.axes2)
    plot(t,decodedy) 

 guidata(hObject,handles)


% --- Executes on button press in playDecoded.
function playDecoded_Callback(hObject, eventdata, handles)
% hObject    handle to playDecoded (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
audio=handles.audio;

    decodedy=handles.decodedy;
    fs=handles.fs;
    len=handles.len;
    player=audioplayer(decodedy,fs);
    play(player)
    pause((len/fs)+1);


guidata(hObject,handles)
