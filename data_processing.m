%% Edge Computing final project

clear all;
close all;

%load the edf file
[hdr, record] = edfread('00001020-100507[005].edf');

% select only audio (channel 19)
audio = record(19,:);

% play audio (optional)
Fs = 48000;
nBits = 16;
%spectrogram(y,'yaxis')
%sound(y,Fs,nBits)
filename = '00001020-100507[005].wav';
audiowrite(filename,audio,Fs) %save audio to file


%% extract annotations
foldername = '00001020-100507.rml';
[family,type,start,duration,starting_date,total_duration,segment_files] = events_annotation_extraction(foldername);


fid = fopen('00001020-100507.txt', 'wt');
for i = 1:length(start) %write only relevant info to text file
  a1 = family{i};
  a2 = type{i};
  a3 = num2str(start(i));
  a4 = num2str(duration(i));
  fprintf(fid, '%s,%s,%s,%s\n', a1, a2, a3, a4);
end
fclose(fid);

