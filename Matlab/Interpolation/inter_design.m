%% Script to design coeffecients for interpolator filter

% global parameters
L = 128;

% lowpass charecteristics
int1.f_s = 44.1e3;                  % sampling frequency
int1.f_pass = 20e3/int1.f_s;        % pass frequency (normalised)
int1.f_stop = 22.05e3/int1.f_s;     % stop frequency (normalised)
int1.A_pass = 0.00001;
int1.A_stop = 140;                  % stop band attenuation (decibels)

% set filter parameters
%D = fdesign.interpolator(2,'lowpass','N,Fp,Fst,Ast',N,f_pass,f_stop,A_stop);
filt1 = fdesign.interpolator(2,'lowpass','Fp,Fst,Ap,Ast',int1.f_pass,int1.f_stop,int1.A_pass,int1.A_stop);

% design the filter (normal method)
hm1 = design(filt1)

% set fixed width http://www.mathworks.co.uk/help/dsp/ref/dfilt.dffir.html
hm1.Arithmetic = 'fixed';
hm1.InputWordLength = 16;
hm1.InputFracLength = 15;
hm1.CoeffWordLength = 24;
hm1.FilterInternals = 'SpecifyPrecision';
hm1.AccumWordLength = 30;
hm1.OutputWordLength = 24;
hm1.OutputFracLength = 23;

% view frequency response
fvtool(hm1);

% lowpass charecteristics
int2.f_s = 2*44.1e3;                % sampling frequency
int2.f_pass = 22.05e3/int2.f_s;     % pass frequency (normalised)
int2.f_stop = 44.1e3/int2.f_s;      % stop frequency (normalised)
int2.A_pass = 0.00001;
int2.A_stop = 140;                  % stop band attenuation (decibels)


% set filter parameters
filt2 = fdesign.interpolator(2,'lowpass','Fp,Fst,Ap,Ast',int2.f_pass,int2.f_stop,int2.A_pass,int2.A_stop);

% design the filter (normal method)
hm2 = design(filt2)

% set fixed width http://www.mathworks.co.uk/help/dsp/ref/dfilt.dffir.html

hm2.Arithmetic = 'fixed';
hm2.InputWordLength = 24;
hm2.InputFracLength = 23;
hm2.CoeffWordLength = 24;
hm2.FilterInternals = 'SpecifyPrecision';
hm2.AccumWordLength = 30;
hm2.OutputWordLength = 24;
hm2.OutputFracLength = 23;

% view frequency response
fvtool(hm2);


% lowpass charecteristics
int3.f_s = 4*44.1e3;                % sampling frequency
int3.f_pass = 22.05e3/int3.f_s;     % pass frequency (normalised)
int3.f_stop = 88.2e3/int3.f_s;      % stop frequency (normalised)
int3.A_pass = 0.00001;
int3.A_stop = 160;                  % stop band attenuation (decibels)


% set filter parameters
filt3 = fdesign.interpolator(2,'lowpass','Fp,Fst,Ap,Ast',int3.f_pass,int3.f_stop,int3.A_pass,int3.A_stop);

% design the filter (normal method)
hm3 = design(filt3)

% set fixed width http://www.mathworks.co.uk/help/dsp/ref/dfilt.dffir.html

hm3.Arithmetic = 'fixed';
hm3.InputWordLength = 24;
hm3.InputFracLength = 23;
hm3.CoeffWordLength = 24;
hm3.FilterInternals = 'SpecifyPrecision';
hm3.AccumWordLength = 30;
hm3.OutputWordLength = 24;
hm3.OutputFracLength = 23;

% view frequency response
fvtool(hm3);



%% export the filter coeffecients

% interpolator 1
hq1 = dfilt.dffir(hm1.Numerator); 
hq1.Arithmetic = 'fixed';
hq1.InputWordLength = 24;
hq1.InputFracLength = 23;
hq1.CoeffWordLength = 24;
hq1.FilterInternals = 'SpecifyPrecision';
hq1.AccumWordLength = 30;
hq1.OutputWordLength = 24;
hq1.OutputFracLength = 23;
coewrite(hq1,10,'int1');

% interpolator 2
hq2 = dfilt.dffir(hm2.Numerator); 
hq2.Arithmetic = 'fixed';
hq2.InputWordLength = 24;
hq2.InputFracLength = 23;
hq2.CoeffWordLength = 24;
hq2.FilterInternals = 'SpecifyPrecision';
hq2.AccumWordLength = 30;
hq2.OutputWordLength = 24;
hq2.OutputFracLength = 23;
coewrite(hq2,10,'int2');

% interpolator 3
hq3 = dfilt.dffir(hm3.Numerator); 
hq3.Arithmetic = 'fixed';
hq3.InputWordLength = 24;
hq3.InputFracLength = 23;
hq3.CoeffWordLength = 24;
hq3.FilterInternals = 'SpecifyPrecision';
hq3.AccumWordLength = 30;
hq3.OutputWordLength = 24;
hq3.OutputFracLength = 23;
coewrite(hq3,10,'int3');


%% create CIC filter

% create CIC
cic.fs = 8*44.1e3;
cic.fpass = 2*44.1e3;
cic.fstop = cic.fs/2;
cic.apass = 0.00001;
cic.astop = 60;
cic.L = L/8;
cic.m = 1;
cic.n = 6;
cic.in_word = 20;
cic.out_word = 24;
cic.accum = 30;

% create the CIC filter
hmcic = mfilt.cicinterp(cic.L, cic.m, cic.n, cic.in_word, cic.out_word, cic.accum);
hmmcic = cascade(dfilt.scalar(1/gain(hmcic)),hmcic);

% create the CIC compensator filter
hmcomp = design(fdesign.ciccomp(hmcic.differentialdelay,hmcic.numberofsections,cic.fpass,cic.fstop,cic.apass,cic.astop,cic.fs));

% export coeffs
hqcomp = dfilt.dffir(hmcomp.Numerator); 
hqcomp.Arithmetic = 'fixed';
hqcomp.InputWordLength = 24;
hqcomp.InputFracLength = 23;
hqcomp.CoeffWordLength = 24;
hqcomp.FilterInternals = 'SpecifyPrecision';
hqcomp.AccumWordLength = 30;
hqcomp.OutputWordLength = 24;
hqcomp.OutputFracLength = 23;
coewrite(hqcomp,10,'intcomp');

% cascade the filters
%hmc = cascade(hmcomp,hmmcic);
%fvtool(hmcomp,hmmcic,hmc,'Fs',[cic.fs cic.fs*cic.L cic.fs*cic.L]);


%% cascade all the filters
hmc = cascade(hm1,hm2,hm3,hmcomp,hmmcic);
fvtool(hmc,'Fs',[cic.fs*cic.L]);