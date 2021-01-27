% houghedgeline( pic, scale, gradmagnthreshold, ...
%                                             nrho, ntheta,accuthreshold, nlines,    verbose)


testimage1 = triangle128;
smalltest1 = binsubsample(testimage1);

testimage2 = houghtest256;
smalltest2 = binsubsample(binsubsample(testimage2));

testimage3 = phonecalc256;
smalltest3 = binsubsample(binsubsample(testimage3));

houghedgeline(testimage3, 4, 1000,  400,200,600,20,   1);


