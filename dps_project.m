%reading from the file _before music
M = dlmread('ECG, Breathing and Seismocardiograms_before_music.txt');
timeb=M(:,1);
Ib = M(:,2);
IIb = M(:,3);
RESPb = M(:,4);
SCGb = M(:,5);

[maxFreqIb, maxFreqMagIb] = maxFreq(Ib,timeb,'Before music','I');
[maxFreqIIb, maxFreqMagIIb]=maxFreq(IIb,timeb,'Before music','II');
[maxFreqRESPb, maxFreqMagRESPb]=maxFreq(RESPb,timeb,'Before music','RESP');
[maxFreqSCGb, maxFreqMagSCGb]=maxFreq(SCGb,timeb,'Before music','SCG');
fprintf('MAX FREQUENCY BEFORE MUSIC:\n');
fprintf(' - ECG I: %3.2f, %3.2f\n',maxFreqIb, maxFreqMagIb)
fprintf(' - ECG II: %3.2f, %3.2f\n',maxFreqIIb, maxFreqMagIIb)
fprintf(' - RESP: %3.2f, %3.2f\n',maxFreqRESPb, maxFreqMagRESPb)
fprintf(' - SCG: %3.2f, %3.2f\n\n',maxFreqSCGb, maxFreqMagSCGb)



%reading from the file _during music
M = dlmread('ECG, Breathing and Seismocardiograms_during_music.txt');
timem=M(:,1);
Im = M(:,2);
IIm = M(:,3);
RESPm = M(:,4);
SCGm = M(:,5);

[maxFreqIm, maxFreqMagIm] = maxFreq(Im,timem,'During music','I');
[maxFreqIIm, maxFreqMagIIm]=maxFreq(IIm,timem,'During music','II');
[maxFreqRESPm, maxFreqMagRESPm]=maxFreq(RESPm,timem,'During music','RESP');
[maxFreqSCGm, maxFreqMagSCGm]=maxFreq(SCGm,timem,'During music','SCG');
fprintf('MAX FREQUENCY DURING MUSIC:\n');
fprintf(' - ECG I: %3.2f, %3.2f\n',maxFreqIm, maxFreqMagIm)
fprintf(' - ECG II: %3.2f, %3.2f\n',maxFreqIIm, maxFreqMagIIm)
fprintf(' - RESP: %3.2f, %3.2f\n',maxFreqRESPm, maxFreqMagRESPm)
fprintf(' - SCG: %3.2f, %3.2f\n\n',maxFreqSCGm, maxFreqMagSCGm)


%reading from the file _after music
M = dlmread('ECG, Breathing and Seismocardiograms_after_music.txt');
timep=M(:,1);
Ip = M(:,2);
IIp = M(:,3);
RESPp = M(:,4);
SCGp = M(:,5);

[maxFreqIp, maxFreqMagIp] = maxFreq(Ip,timep,'During music','I');
[maxFreqIIp, maxFreqMagIIp]=maxFreq(IIp,timep,'During music','II');
[maxFreqRESPp, maxFreqMagRESPp]=maxFreq(RESPp,timep,'During music','RESP');
[maxFreqSCGp, maxFreqMagSCGp]=maxFreq(SCGp,timep,'During music','SCG');
fprintf('MAX FREQUENCY DURING MUSIC:\n');
fprintf(' - ECG I: %3.2f, %3.2f\n',maxFreqIm, maxFreqMagIm)
fprintf(' - ECG II: %3.2f, %3.2f\n',maxFreqIIm, maxFreqMagIIm)
fprintf(' - RESP: %3.2f, %3.2f\n',maxFreqRESPm, maxFreqMagRESPm)
fprintf(' - SCG: %3.2f, %3.2f\n\n\n',maxFreqSCGm, maxFreqMagSCGm)

% nizaXX se rastojanija izmegu pikovi

nizaIb = countDistance(Ib,0.3);
nizaIIb = countDistance(IIb,0.7);
nizaRESPb = countDistance(RESPb,0.1);
nizaSCGb = countDistance(SCGb,2);

nizaIm = countDistance(Im,0.3);
nizaIIm = countDistance(IIm,0.7);
nizaRESPm = countDistance(RESPm,0.1);
nizaSCGm = countDistance(SCGm,2);

nizaIp = countDistance(Ip,0.3);
nizaIIp = countDistance(IIp,0.7);
nizaRESPp = countDistance(RESPp,0.1);
nizaSCGp = countDistance(SCGp,2);

% meanNizaXX e prosek na elementite vo nizaXX

meanNizaIb = mean(nizaIb(2:length(nizaIb)));
meanNizaIm = 10 * mean(nizaIm(2:length(nizaIm)));
meanNizaIp = mean(nizaIp(2:length(nizaIp)));

meanNizaIIb = mean(nizaIIb(2:length(nizaIIb)));
meanNizaIIm = 10 * mean(nizaIIm(2:length(nizaIIm)));
meanNizaIIp = mean(nizaIIp(2:length(nizaIIp)));

meanNizaRESPb = mean(nizaRESPb(2:length(nizaRESPb)));
meanNizaRESPm = 10 * mean(nizaRESPm(2:length(nizaRESPm)));
meanNizaRESPp = mean(nizaRESPp(2:length(nizaRESPp)));

meanNizaSCGb = mean(nizaSCGb(2:length(nizaSCGb)));
meanNizaSCGm = 10 * mean(nizaSCGm(2:length(nizaSCGm)));
meanNizaSCGp = mean(nizaSCGp(2:length(nizaSCGp)));

% pecatenje na prosecite

fprintf('Mean Ib: %3.2f\n', meanNizaIb);
fprintf('Mean Im: %3.2f\n', meanNizaIm);
fprintf('Mean Ip: %3.2f\n\n', meanNizaIp);

fprintf('Mean IIb: %3.2f\n', meanNizaIIb);
fprintf('Mean IIm: %3.2f\n', meanNizaIIm);
fprintf('Mean IIp: %3.2f\n\n', meanNizaIIp);

fprintf('Mean RESPb: %3.2f\n', meanNizaRESPb);
fprintf('Mean RESPm: %3.2f\n', meanNizaRESPm);
fprintf('Mean RESPp: %3.2f\n\n', meanNizaRESPp);

fprintf('Mean SCGb: %3.2f\n', meanNizaSCGb);
fprintf('Mean SCGm: %3.2f\n', meanNizaSCGm);
fprintf('Mean SCGp: %3.2f\n\n', meanNizaSCGp);

% soodnos na prosecite (za vreme na muzika i pred muzika) i (za vreme na
% muzika i po muzika) i pecatenje na soodnosite

ratioImIb = meanNizaIm / meanNizaIb;
ratioImIp = meanNizaIm / meanNizaIp;
fprintf('Ratio Im / Ib: %3.2f\n', ratioImIb);
fprintf('Ratio Im / Ip: %3.2f\n\n', ratioImIp);

ratioIImIIb = meanNizaIIm / meanNizaIIb;
ratioIImIIp = meanNizaIIm / meanNizaIIp;
fprintf('Ratio IIm / IIb: %3.2f\n', ratioIImIIb);
fprintf('Ratio IIm / IIp: %3.2f\n\n', ratioIImIIp);

ratioRESPmRESPb = meanNizaRESPm / meanNizaRESPb;
ratioRESPmRESPp = meanNizaRESPm / meanNizaRESPp;
fprintf('Ratio RESPm / RESPb: %3.2f\n', ratioRESPmRESPb);
fprintf('Ratio RESPm / RESPp: %3.2f\n\n', ratioRESPmRESPp);

ratioSCGmSCGb = meanNizaSCGm / meanNizaSCGb;
ratioSCGmSCGp = meanNizaSCGm / meanNizaSCGp;
fprintf('Ratio SCGm / SCGb: %3.2f\n', ratioSCGmSCGb);
fprintf('Ratio SCGm / SCGp: %3.2f\n\n', ratioSCGmSCGp);


% plot

figure();
plot(nizaIb);
figure();
plot(nizaIIb);
figure();
plot(nizaRESPb);
figure();
plot(nizaSCGb);

figure();
plot(nizaIm);
figure();
plot(nizaIIm);
figure();
plot(nizaRESPm);
figure();
plot(nizaSCGm);

figure();
plot(nizaIp);
figure();
plot(nizaIIp);
figure();
plot(nizaRESPp);
figure();
plot(nizaSCGp);

% end plot
