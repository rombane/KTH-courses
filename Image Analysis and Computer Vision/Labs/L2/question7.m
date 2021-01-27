%input image 1
img_1 =tools ;
thres_1 = 10000; %threshold can be discovere by performing steps in question 2-3

%input image 2
img_2 = house;
thres_2 = 5000;

%scale inputs
scale_a =0.0001 ;
scale_b = 1;
scale_c = 4;
scale_d = 16;
scale_e = 64;

f1 = figure('name', 'FIGURE 1 : TOOLS');
f2 = figure('name', 'FIGURE 2 : HOUSE');

%Generate figure for first image
figure(f1)
subplot(1,6,1)
showgrey(tools);
subplot(1,6,2)
curve_a1 = extractedge(img_1, scale_a, thres_1);
title('Scale = 0.0001');
subplot(1,6,3)
curve_a2 = extractedge(img_1, scale_b, thres_1);
title('Scale = 1');
subplot(1,6,4)
curve_a3 = extractedge(img_1, scale_c, thres_1);
title('Scale = 4');
subplot(1,6,5)
curve_a4 = extractedge(img_1, scale_d, thres_1);
title('Scale = 16');
subplot(1,6,6)
curve_a5 = extractedge(img_1, scale_e, thres_1);
title('Scale = 64');

%Generate figure for second image
figure(f2)
subplot(1,6,1)
showgrey(house);
subplot(1,6,2)
curve_b1 = extractedge(img_2, scale_a, thres_2);
title('Scale = 0.0001');
subplot(1,6,3)
curve_b2 = extractedge(img_2, scale_b, thres_2);
title('Scale = 1');
subplot(1,6,4)
curve_b3 = extractedge(img_2, scale_c, thres_2);
title('Scale = 4');
subplot(1,6,5)
curve_b4 = extractedge(img_2, scale_d, thres_2);
title('Scale = 16');
subplot(1,6,6)
curve_b5= extractedge(img_2, scale_e, thres_2);
title('Scale = 64');

%Question 7 can be answered by choosing the best image configuration(threshold and scale selection) for
%image 1 and image 2