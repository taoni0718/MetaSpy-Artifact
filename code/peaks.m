function [Average_Peaks,AverageDistance_Peaks,MaxDistance_Peaks, MinDistance_Peaks, Max_Peaks, Min_Peaks,peaktopeak,peaktopeakdiff]=peaks(Volture1, fs)
[pks,locs]=findpeaks(Volture1);
% figure,plot(Volture1)
% hold on
% plot(locs,Volture1(locs),'k^','markerfacecolor',[1 0 0]);
% hold off
locs=locs/fs;
AverageDistance_Peaks = mean(diff(locs));
Average_Peaks = mean(diff(pks));
MaxDistance_Peaks = max(diff(locs));
MinDistance_Peaks = min(diff(locs));
Max_Peaks = max(diff(pks));
Min_Peaks = min(diff(pks));
peaktopeak = max(pks)-min(pks);
peaktopeakdiff=Max_Peaks-Min_Peaks;

%     
%     [pks,locs] = findpeaks(windowV,'MinPeakHeight',0.05,...
%                                       'MinPeakDistance',400);
%     PeaksNo(i)=length(pks);
% %     Peaks(i)=mean(diff(pks));
% %     PDistance(i)=mean(diff(locs));