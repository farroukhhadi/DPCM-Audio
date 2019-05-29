function varargout = Transmitter(varargin)
% TRANSMITTER MATLAB code for Transmitter.fig
%      TRANSMITTER, by itself, creates a new TRANSMITTER or raises the existing
%      singleton*.
%
%      H = TRANSMITTER returns the handle to a new TRANSMITTER or the handle to
%      the existing singleton*.
%
%      TRANSMITTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRANSMITTER.M with the given input arguments.
%
%      TRANSMITTER('Property','Value',...) creates a new TRANSMITTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Transmitter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Transmitter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Transmitter

% Last Modified by GUIDE v2.5 26-May-2019 19:45:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Transmitter_OpeningFcn, ...
                   'gui_OutputFcn',  @Transmitter_OutputFcn, ...
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


% --- Executes just before Transmitter is made visible.
function Transmitter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Transmitter (see VARARGIN)

% Choose default command line output for Transmitter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Transmitter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Transmitter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function fs_Callback(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs as text
%        str2double(get(hObject,'String')) returns contents of fs as a double


% --- Executes during object creation, after setting all properties.
function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nb_Callback(hObject, eventdata, handles)
% hObject    handle to nb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nb as text
%        str2double(get(hObject,'String')) returns contents of nb as a double


% --- Executes during object creation, after setting all properties.
function nb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nt_Callback(hObject, eventdata, handles)
% hObject    handle to nt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nt as text
%        str2double(get(hObject,'String')) returns contents of nt as a double


% --- Executes during object creation, after setting all properties.
function nt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lenofrec_Callback(hObject, eventdata, handles)
% hObject    handle to lenofrec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lenofrec as text
%        str2double(get(hObject,'String')) returns contents of lenofrec as a double


% --- Executes during object creation, after setting all properties.
function lenofrec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lenofrec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startrec.
function startrec_Callback(hObject, eventdata, handles)
% hObject    handle to startrec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs1=str2num(get(handles.fs, 'String'));
rectime=str2num(get(handles.lenofrec, 'String'));
rec=audiorecorder(fs1, 8, 1);
set(handles.stateofrec, 'String', ' Recording')
recordblocking(rec,rectime)
set(handles.stateofrec, 'String', 'Recording Ended')
signal=getaudiodata(rec);
t=0:1/fs1:(length(signal)/fs1-1/fs1);
handles.signal=signal;
handles.fs1=fs1;
handles.rectime=rectime;
handles.t=t;
axes(handles.axes1)
plot(t,signal)
guidata(hObject, handles)


% --- Executes on button press in playaudio.
function playaudio_Callback(hObject, eventdata, handles)
% hObject    handle to playaudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    signal=handles.signal;
    fs1=handles.fs1;
    player1=audioplayer(signal,fs1);
    play(player1)
    pause(length(signal))


% --- Executes on button press in encaudio.
function encaudio_Callback(hObject, eventdata, handles)
% hObject    handle to encaudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
taps=str2num(get(handles.nt, 'String'));
bits=str2num(get(handles.nb, 'String'));
L=2^bits;
    signal=handles.signal;
    signal=double(signal);
    x = signal(:);
    initialcodebook=linspace(min(x),max(x),L);
    [predictor, codebook, partition]=dpcmopt(x,taps,initialcodebook);
    encodedx=dpcmenco(x,codebook,partition,predictor);
    set(handles.Weights, 'String', num2str(predictor))
    handles.encodedx=encodedx;
    handles.codebook=codebook;
    handles.predictor=predictor;
    handles.partition=partition;
    handles.taps=taps;
    handles.maxy=max(x);  
    handles.miny=min(x);
    fs1=handles.fs1;
    s=whos('encodedx'); 
    maudio=[0 0 0 0 0 fs1 prod(s.size) L taps predictor codebook];
    handles.maudio=maudio;
    s1=whos('maudio');
    set(handles.sizeinfo, 'String', num2str(prod(s1.size)));
    decodedx=dpcmdeco(encodedx, codebook, predictor);
    mse=sum((x-decodedx').^2)/length(x);
    distortion=sum((x-encodedx').^2)/length(x);
    set(handles.Qerror,'String',num2str(distortion));
    set(handles.msqe, 'String', num2str(mse))
    guidata(hObject,handles)


% --- Executes on button press in plotQ.
function plotQ_Callback(hObject, eventdata, handles)
% hObject    handle to plotQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    encodedx=handles.encodedx;
    t=handles.t;
    axes(handles.axes2)
    plot(t,encodedx)
   
guidata(hObject,handles)


% --- Executes on button press in sendinfo.
function sendinfo_Callback(hObject, eventdata, handles)
% hObject    handle to sendinfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    maudio=handles.maudio;
    s2=whos('maudio');
    ip=get(handles.IPA,'String');
    tcpipserver=tcpip(ip,55000,'NetworkRole','Server');
    set(tcpipserver,'OutputBufferSize',s2.bytes);
    fopen(tcpipserver);
    fwrite(tcpipserver,maudio,'double');
    fclose(tcpipserver);
guidata(hObject,handles)




% --- Executes on button press in sendaudio.
function sendaudio_Callback(hObject, eventdata, handles)
% hObject    handle to sendaudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    encodedx=handles.encodedx;
    s=whos('encodedx');
    ip=get(handles.IPA,'String');
    tcpipserver=tcpip(ip,55000,'NetworkRole','Server');
    set(tcpipserver,'OutputBufferSize',s.bytes);
 
    fopen(tcpipserver);
    fwrite(tcpipserver,encodedx,'double');
    fclose(tcpipserver);
    


function stateofrec_Callback(hObject, eventdata, handles)
% hObject    handle to stateofrec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stateofrec as text
%        str2double(get(hObject,'String')) returns contents of stateofrec as a double


% --- Executes during object creation, after setting all properties.
function stateofrec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stateofrec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sizeinfo_Callback(hObject, eventdata, handles)
% hObject    handle to sizeinfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sizeinfo as text
%        str2double(get(hObject,'String')) returns contents of sizeinfo as a double


% --- Executes during object creation, after setting all properties.
function sizeinfo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sizeinfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Qerror_Callback(hObject, eventdata, handles)
% hObject    handle to Qerror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Qerror as text
%        str2double(get(hObject,'String')) returns contents of Qerror as a double


% --- Executes during object creation, after setting all properties.
function Qerror_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Qerror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function msqe_Callback(hObject, eventdata, handles)
% hObject    handle to msqe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of msqe as text
%        str2double(get(hObject,'String')) returns contents of msqe as a double


% --- Executes during object creation, after setting all properties.
function msqe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to msqe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IPA_Callback(hObject, eventdata, handles)
% hObject    handle to IPA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IPA as text
%        str2double(get(hObject,'String')) returns contents of IPA as a double


% --- Executes during object creation, after setting all properties.
function IPA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IPA (see GCBO)
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
