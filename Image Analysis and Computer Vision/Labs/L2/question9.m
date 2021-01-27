img_1 = few256;
img_2 = phonecalc256;
img_3 = godthem256;




figure(1)
tic
houghedgeline(img_1,4, 150,      500, 500,2000, 10,1);
time1 = toc;

% 
% % subplot(1,3,2)
% tic
% % houghedgeline(img_2,4, 125, 10, 45, 50, 20);
% time2 = toc;

% % subplot(1,3,3)
% tic
% % houghedgeline(img_3,4, 125, 10, 45, 50, 20);
% time3 = toc;
