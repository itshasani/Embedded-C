clear all 
% Array or signla Sampling 
SampleArray = [1:1024];
% Sampling Frequency
fs = 50000000;
% 1000Hz Signal 
fclk1 = 9500000;
clk1 = 0.5*sin(2*pi*(fclk1/fs)*SampleArray);
% 15000Hz Signal 
fclk2 = 9800000;
clk2 = sin(2*pi*(fclk2/fs)*SampleArray);


Input_Signal = clk1 + clk2;

% write CSV Input Signal File in Loadpath
csvwrite('Input_File_1000.CSV',Input_Signal);

figure(1);
plot(Input_Signal);

% frequency domain 
Nfft = 2^14;
clkfreq = fft(Input_Signal,Nfft);
fFFt = fs/2*linspace(0,1,(Nfft/2)+1);

figure(2);
plot(fFFt,(10*log10(abs(clkfreq(1:(Nfft/2) + 1 )))),'red','LineWidth',2);





