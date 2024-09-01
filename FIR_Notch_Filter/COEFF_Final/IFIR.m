Fpass1 = 9.4/50;  % Passband edge
Fstop1 = 9.6/50;    % Stopband edge
Fstop2 = 9.8/50;
Fpass2 = 10/50;
Apass = 1;  % Passband ripple, 0.0174 dB peak to peak
Astop = 60; % Stopband ripple, 66.0206 dB of minimum attenuation
Fs    = 50e6;


bandstopspec = fdesign.bandstop(Fpass1,Fstop1,Fstop2,Fpass2,Apass,Astop,Fs);
eqripFilter = design(bandstopspec,'equiripple','SystemObject',true);
cost(eqripFilter)