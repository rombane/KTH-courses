img_in = imread('tiger1.jpg'); %select the picture

%%function segm = norm_cuts_segm(I, colour_bandwidth, radius, ncuts_thresh, min_area, max_depth)


colour_bandwidth=30;
radius=2;
ncuts_thresh=0.25;
min_area= 50;
max_depth=10;


norm_segm = norm_cuts_segm(img_in, colour_bandwidth, radius, ncuts_thresh, min_area, max_depth);



img_segm_final = mean_segments(img_in, norm_segm);
img_segm_lines = overlay_bounds(img_in, norm_segm);

figure(1)
imshow(img_segm_final);

figure(2)
imshow(img_segm_lines);