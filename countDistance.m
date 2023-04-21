function [ niza ] = countDistance( signal, treshold )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

for i = 1:length(signal)
   if signal(i) < treshold
        peaks(i) = 0;
   else
       peaks(i) = 1;
   end
end

flag = 0;
count = 0;
counter = 1;
for i = 1:1:length(peaks)
    if peaks(i) == 0 && flag == 0
        count = count + 1;
    elseif peaks(i) == 1 && flag == 0
        niza(counter) = count;
        count = 0;
        counter = counter + 1;
        flag = 1;
    elseif peaks(i) == 0 && flag == 1
        flag = 0;
        count = 1;
    end
end

end

