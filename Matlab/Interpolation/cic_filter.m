%% create CIC filter

% global parameters
L = 128;

% create CIC
cic.fs = 8*44.1e3;
cic.fpass = 2*44.1e3;
cic.fstop = cic.fs/2;
cic.apass = 0.0001;
cic.astop = 60;
cic.L = L/8;
cic.m = 1;
cic.n = 16;
cic.in_word = 24;
cic.out_word = 24;
cic.accum = 30;

% create the CIC filter
hmcic = mfilt.cicinterp(cic.L, cic.m, cic.n, cic.in_word, cic.out_word, cic.accum);
hmmcic = cascade(dfilt.scalar(1/gain(hmcic)),hmcic);

% create the CIC compensator filter
hmcomp = design(fdesign.ciccomp(hmcic.differentialdelay,hmcic.numberofsections,cic.fpass,cic.fstop,cic.apass,cic.astop,cic.fs));

% cascade the filters
hmc = cascade(hmcomp,hmmcic);
fvtool(hmcomp,hmmcic,hmc,'Fs',[cic.fs cic.fs*cic.L cic.fs*cic.L]);