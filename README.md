# e6692-2022spring-finalproject-sls2305

## Abstract
Sleep apnea is a sleep disorder characterized by the obstruction in nasal airflow, which results in a low concentration of oxygen in the blood. Sleep apnea is commonly diagnosed through polysomnography (PSG), also known as a sleep study. However, it can be difficult for physicians to determine which patients to refer for further testing. This makes a low-cost screening device for at-home use an attractive solution for initial diagnosis. In this paper we have investigated a convolutional neural network (CNN) approach to diagnose sleep apnea using the Jetson Nano. The network was trained and validated using a sampling of audio recordings from PSG studies visualized as a spectrogram, accompanied by physician annotations. The network achieved an accuracy of 72% in detecting sleep apnea, 69% in detecting snoring, and 85% in detecting either snoring or apnea.


## File descriptions
* ***create_spectrogram.ipynb*** - creates the spectrograms
* ***data_processing.m*** - opens EDF and RML files in MATLAB
* edfread.m - MATLAB function provided by dataset creators
* events_annotation_extraction.m - MATLAB function provided by dataset creators
* inference-Jetson.ipynb - inference results on Jetson Nano
* inference-PC.ipynb - inference results on PC
* make_csv.ipynb - create the csv of files and labels
* ***record_audio_inference.ipynb*** - live inference on PC with microphone
* recrop.ipynb - remove white space from all images
* rename_files.ipynb - rename all images to consistent naming
* ***train.ipynb*** - train the CNN and save weights
