clear all
% array for signal sampling 
SampleArray = [1:5024];

% Sampling frequency 
fs = 50000000;
% 1000Hz Signal 
fclk1 = 9500000;
clk1 = 0.5*sin(2*pi*(fclk1/fs)*SampleArray);
% 50000Hz Signal 
fclk2 = 9800000;
clk2 = sin(2*pi*(fclk2/fs)*SampleArray);

Input_Signal = clk1 + clk2;
figure(1);
input_ranged = Input_Signal(:,2000:1:2500);

plot(input_ranged);
xlabel('نمونه','FontSize',14,'Color','green');
ylabel('دامنه','FontSize',14,'Color','green');

OutputSignal = csvread('Log_File_ASN.csv');

OutPutsRanged = OutputSignal(2000:1:2500,1);

figure(2);
plot(OutPutsRanged);
xlabel('نمونه','FontSize',14,'Color','blue');
ylabel('دامنه','FontSize',14,'Color','blue');
% frequency domain 
Nfft = 2^14;
clkfreq = fft(Input_Signal,Nfft);
fFFt = fs/2*linspace(0,1,(Nfft/2)+1);

figure(3);
plot(fFFt,(10*log10(abs(clkfreq(1:(Nfft/2) + 1 )))),'red','LineWidth',2);
xlabel('Hz فرکانس','FontSize',14,'Color','red');
ylabel('dB دامنه','FontSize',14,'Color','red');


clkfreq = fft(OutputSignal,Nfft);
fFFt = fs/2*linspace(0,1,(Nfft/2)+1);

figure(4);
plot(fFFt,(10*log10(abs(clkfreq(1:(Nfft/2) + 1 )))),'blue','LineWidth',2);
xlabel('Hz فرکانس','FontSize',14,'Color','blue');
ylabel('dB دامنه','FontSize',14,'Color','blue');