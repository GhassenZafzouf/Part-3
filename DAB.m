%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Prac 3 - 4.3.1                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = read_complex_byte('dab2-B.bin'); 
Fs = 2.048e6;                              
% Question: is frame_end  = frame_start + 76 * 2148 ? 
frame_start = 43222;
frame_end = frame_start + 76*2148;
frame = x(frame_start:frame_end);      
t = [0:1/Fs:(length(real(frame))-1)/Fs]; 
% Plot Energy
% figure, plot(abs(frame)); 
% title('Energy - Frequency 9B')
% Plot constellation diagram 
% figure, plot(frame(1:5e2)); 
% title('Contellation - Frequency 9B')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Group the symbols into a 76 x 2048 - matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
