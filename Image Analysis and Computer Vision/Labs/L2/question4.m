img_in = godthem256; %
%test_cont = Lvvtilde(discgaussfft(house, scale_a));
%showgrey(test_cont);


%Define multiple scales needed
scale_a = 0.0001;
scale_b= 1;
scale_c=4;
scale_d= 16;
scale_e= 64;


%Generate multiple results of contour operations in one figure (original image included)
subplot(2,6,1)
showgrey(img_in)

subplot(2,6,2)
showgrey(discgaussfft(img_in, scale_a ))

subplot(2,6,3)
showgrey(discgaussfft(img_in, scale_b ))


subplot(2,6,4)
showgrey(discgaussfft(img_in, scale_c ))

subplot(2,6,5)
showgrey(discgaussfft(img_in, scale_d ))

subplot(2,6,6)
showgrey(discgaussfft(img_in, scale_ ))


subplot(2,6,8)
contour(Lvvtilde(discgaussfft(img_in, scale_a ), 'same'), [0 0])
axis('image')
axis('ij')

subplot(2,6,9)
contour(Lvvtilde(discgaussfft(img_in, scale_b ), 'same'), [0 0])
axis('image')
axis('ij')

subplot(2,6,10)
contour(Lvvtilde(discgaussfft(img_in, scale_c ), 'same'), [0 0])
axis('image')
axis('ij')

subplot(2,6,11)
contour(Lvvtilde(discgaussfft(img_in, scale_d ), 'same'), [0 0])
axis('image')
axis('ij')

subplot(2,6,12)
contour(Lvvtilde(discgaussfft(img_in, scale_e ), 'same'), [0 0])
axis('image')
axis('ij')

