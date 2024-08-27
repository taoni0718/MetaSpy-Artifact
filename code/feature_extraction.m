function [Farr]=feature_extraction(data)

% convert table to array
arr = data(:, 1);
arraySize = size(arr);
%arr = zeros(arraySize);
%for row = 1: arraySize
%    arr(row) = tableContent{row, 1};
%end

% deduct the average number when static
%avg_static = mean(arr(1:static_num));
%for row = 1:arraySize
%    arr(row) = arr(row) - avg_static;
%end

arrForWindow = arr(1:arraySize);

%arrForWindowNormed = (arrForWindow - min(arrForWindow)) / (max(arrForWindow) - min(arrForWindow));

arrForWindowActive = normalize(arrForWindow, 'range');

%arrForWindowActive = arrForWindowNormed(arrForWindowNormed(:, 1) > 0);

% set the filter
fc = 10;
fs = 200;
[b, a] = butter(6, fc/(fs/2));

arrForWindowActive = filter(b, a, arrForWindowActive);

% slice the windows
windowSize = 200; % window size
k = 1;
for i = 1:windowSize*0.5:length(arrForWindowActive) %50% overalpping
    ii = i + windowSize - 1;
    if (ii <= length(arrForWindowActive))
        A{k} = arrForWindowActive(i:ii);
        k = k + 1;
    end
end

% extract features
for i = 1:length(A)
    window = A{i};
    %time=tt{i};
    
    %Time Domain Features
    MEAN(i) = mean(window); %mean
    VAR(i) = var(window); %variance
    STD(i) = std(window); %standard deviation
    MAX(i) = max(window); %maximum
    MIN(i) = min(window); %minimum
    RANG(i) = MAX(i) - MIN(i); %range
    
    ABSMEAN(i) = mean(abs(window)); %absoulte mean
    CV(i) = (STD(i)/MEAN(i))*100; %coefficient of variation
    SKEW(i) = skewness(window); %skewness
    KURT(i) = kurtosis(window); %kurtosis
    
    %Q1(i) = median(window(find(window<median(window))));%first quartile
    Q1(i) = quantile(window, 0.25); %first quartile
    MED(i) = median(window); %second quartile (meduan)
    %Q3(i) = median(window(find(window>median(window))));%third quartile 
    Q3(i) = quantile(window, 0.75); %third quartile 
    IQR(i) = iqr(window); %interquartile range
    
    MCR(i) = sum(abs(diff(window > MEAN(i))))/size(window, 1); %mean cross rate
    Q1CR(i) = sum(abs(diff(window > Q1(i))))/size(window, 1); %q1 cross rate
    Q3CR(i) = sum(abs(diff(window > Q3(i))))/size(window, 1); %q3 cross rate
    MedCR(i) = sum(abs(diff(window > MED(i))))/size(window, 1); %median cross rate
    
    RMS(i) = rms(window); %rms
    MAD(i) = mad(window,0); %Mean Absolute Deviation
    
    SF(i) = RMS(i)/ABSMEAN(i); %shape factor
    IF(i) = MAX(i)/ABSMEAN(i); %impulse factor
    CF(i) = MAX(i)/RMS(i); %crest factor
    ShEn(i) = Entropy(window); %entropy
    
    %Frequency Domain Features
    m = length(window);
    FD = fft(window);
    [num, den] = butter(3,0.1,'high');
    [H, w] = freqz(num,den,m);
    y = H.*FD;  %Filtering from the gravity component
    yy = ifft(y);
    aa = real(yy);
    
    F = fft(aa);
    L = length(F);
    fs = 100; %sampling rate
    f = (0:L-1)*(fs/L); %frequency Range
    ff = f(1:length(f)/2); %half of the frequency Range (frquencies)
    FF = F(1:length(f)/2); %half of the frequency frequency (coefficinets)
    [B, index] = sort(abs(FF), 'descend');
    DF(i) = ff(index(1)); %Dominant Frequency
    FFTcoeffMag = abs(FF); %magnitude value of the coefficients of the FFT spectrum
    FDMean(i) = mean(FFTcoeffMag.^2);  %the mean value of the magnitude of FFT coefficients (power spectrum mean)
    FDMax(i) = max(FFTcoeffMag.^2); %the maximum value of the magnitude of FFT coefficients
    FDMin(i) = min(FFTcoeffMag.^2);  %the minimum value of the magnitude of FFT coefficients(power spectrum min)
    FDEnergy(i) = sum(FFTcoeffMag.^2); %the sum of the magnitude of FFT coefficients (Total Energy)
    
    FFTcoeffMagNorm = FFTcoeffMag/sum(FFTcoeffMag);
    for j = 1:length(FFTcoeffMagNorm)
        En(j) = FFTcoeffMagNorm(j)*log2(FFTcoeffMagNorm(j));
    end
    
    FDEntropy(i) = -sum(En); %Entropy
    
    DFreqR(i)=max(FFTcoeffMag)/sum(FFTcoeffMag); % Dominant frequency ratio
    
    %[AvgPks(i), AvgDistPks(i), MaxDistPks(i), MinDistPks(i), MaxPks(i), MinPks(i), P2P(i), P2Pdiff(i)] = peaks(window, fs);
end

Farr = [MEAN', VAR', STD', MAX', MIN', RANG', ABSMEAN', CV', SKEW', KURT', Q1', MED', Q3', IQR', MCR', Q1CR', Q3CR', MedCR', RMS', MAD', SF', IF', CF', ShEn', DFreqR'];
%Farr = [VAR', STD', SKEW', KURT', MCR', Q1CR', Q3CR', MedCR', RMS', MAD', SF', IF', CF', ShEn', FDMean', DFreqR', AvgPks', AvgDistPks', MaxDistPks', MinDistPks', MaxPks', MinPks', P2P', P2Pdiff'];
%Farr = [MEAN', VAR', STD', MAX', MIN', RANG', ABSMEAN', CV', SKEW', KURT', Q1', MED', Q3', IQR', MCR', Q1CR', Q3CR', MedCR', RMS', MAD', SF', IF', CF', ShEn', DF', FDMean', DFreqR', AvgPks', AvgDistPks', MaxDistPks', MinDistPks', MaxPks', MinPks', P2P', P2Pdiff'];
%Farr = [MEAN', VAR', STD', MAX', MIN', RANG', ABSMEAN', CV', SKEW', KURT', Q1', MED', Q3', IQR', MCR', Q1CR', Q3CR', MedCR', RMS', MAD', SF', IF', CF', ShEn', FDMean', DFreqR', AvgPks', AvgDistPks', MaxDistPks', MinDistPks', MaxPks', MinPks', P2P', P2Pdiff'];