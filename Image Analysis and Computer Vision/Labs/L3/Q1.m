I = imread('orange.jpg');
Ivec = reshape(I, 572*551, 3);



K = 6;
L= 50;
seed = 10;

I3 = flipdim(I ,1);           %# vertical flip
%I4 = flip(I3,2);

[seg_1,cent_1] = kmeans_segm(I, K, L , seed);

 
im_line_mask = edge(seg_1);
im_line = I;

im_line(im_line_mask) = 255;


imshow(im_line);


 image(I)
 hold all
 contour(edge(seg_1))