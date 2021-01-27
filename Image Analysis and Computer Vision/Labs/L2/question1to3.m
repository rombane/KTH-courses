
img_input = few256;
figure(1)
showgrey(img_input)

%Using Sobel operator:
deltax = [1 +2 +1; 0 0 0; -1 -2 -1];
deltay = deltax';

%Using Robert's cross operator
%deltax = [+1 0; 0 -1];
%deltay = [0 +1, -1 0];

dxtools = conv2(img_input, deltax, 'valid');
dytools = conv2(img_input, deltay, 'valid');

%Show 'dxtools' and 'dytools' as an image (if needed)
figure(2)
showgrey(dxtools);
figure(3)
showgrey(dytools);

%calculating gradient magnitude
figure(4)
gradmagn = sqrt(dxtools .^2 + dytools .^2);
showgrey(gradmagn);

%show histogram, as histogram is considered important determining
%appropriate threshold
figure(5)
subplot(1,2,1)
histogram(gradmagn,600);

%show thresholding result
subplot(1,2,2)
threshold = 150;%default threshold is 125
showgrey((gradmagn - threshold) > 0);

%Question 1 : can be answered by studying difference between 'shape'
%variable in conv2 function

%Question 2 : can be answered after tuning for appropriate threshold limit
%value

%Question 3 can be answered by performing steps below and observing the
%results (comparing thresholding results between smoothened image and unsmoothened image)

% figure(7)
% house = godthem256;
% result_1 = Lv(house);
% result_2 = Lv(gaussfft(house,2));
% threshold_2 = 100;
% f1 =figure('name','unsmoothened input');
% figure(f1)
% showgrey((result_1 - threshold_2) > 0);%uses threshold limit of 150
% 
% f2 =figure('name','smoothened input');
% figure(f2)
% showgrey((result_2 - threshold_2) > 0);%uses threshold limit of 150
% 
