close all;
house = godthem256;
figure(1)
result_1 = Lv(house);
showgrey(result_1)

figure(2)
result_2 = Lv(discgaussfft(house,1));
showgrey(result_2);

threshold_2 = 4;


%normalize
result_1 = result_1/max(max(result_1))*255;
result_2 = result_2/max(max(result_2))*255;


f1 =figure('name','unsmoothened input');
figure(f1)
showgrey((result_1 - threshold_2) > 0);%uses threshold limit of 150

f2 =figure('name','smoothened input');
figure(f2)
showgrey((result_2 - threshold_2) > 0);%uses threshold limit of 150

figure(5)
showgrey(house)