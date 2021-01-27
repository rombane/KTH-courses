


tools = few256;


%Generate multiple plots to show how increasing scale of gaussian smoothing
%may affect the results of contour generation and third-order derivation

%FIRST ROW ARE CONTOURS
subplot(2,6,1)
contour(Lvvtilde(discgaussfft(tools, 0.0001), 'same'),[0 0])
showgrey(tools)
title('Original Image');



subplot(2,6,2)
contour(Lvvtilde(discgaussfft(tools, 0.0001), 'same'),[0 0])
axis('image')
axis('ij')
title('Scale = 0.0001');

subplot(2,6,3)
contour(Lvvtilde(discgaussfft(tools, 1), 'same'),[0 0])
axis('image')
axis('ij')
title('Scale = 1');


subplot(2,6,4)
contour(Lvvtilde(discgaussfft(tools, 4), 'same'),[0 0])
axis('image')
axis('ij')
title('Scale = 4');

subplot(2,6,5)
contour(Lvvtilde(discgaussfft(tools, 16), 'same'),[0 0])
axis('image')
axis('ij')
title('Scale = 16');


subplot(2,6,6)
contour(Lvvtilde(discgaussfft(tools, 64), 'same'),[0 0])
axis('image')
axis('ij')
title('Scale = 64');



%SECOND ROW ARE THIRD-ORDER OPERATION RESULTS
subplot(2,6,7)
showgrey(tools)
title('Original Image');

subplot(2,6,8)
showgrey(Lvvvtilde(discgaussfft(tools, 0.0001), 'same') < 0)
title('Scale = 0.0001');

subplot(2,6,9)
showgrey(Lvvvtilde(discgaussfft(tools, 1), 'same') < 0)
title('Scale = 1');

subplot(2,6,10)
showgrey(Lvvvtilde(discgaussfft(tools, 4), 'same') < 0)
title('Scale = 4');

subplot(2,6,11)
showgrey(Lvvvtilde(discgaussfft(tools, 16), 'same') < 0)
title('Scale = 16');

subplot(2,6,12)
showgrey(Lvvvtilde(discgaussfft(tools, 64), 'same') < 0)
title('Scale = 64');



