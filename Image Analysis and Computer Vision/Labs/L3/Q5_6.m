
%%%mean_shift_segm(I, spatial_bandwidth, colour_bandwidth, num_iterations)

img_in = imread('tiger1.jpg'); %select the picture



segm_img = mean_shift_segm(img_in,10,0.9,100);

img_segm_final = mean_segments(img_in, segm_img);
img_segm_lines = overlay_bounds(img_in, segm_img);

figure(1)
imshow(img_segm_final);

figure(2)
imshow(img_segm_lines);
