

%Generate image
tools = few256;

%Calculate second-order and third-order derivation operation
lvv = Lvvtilde(discgaussfft(tools,4));
lvvv = Lvvvtilde(discgaussfft(tools,4));

%Multiply lvv and lvvv, logarithmic compression is used
combination = log(1 + lvv .* (lvvv < 0));

%show plot of multiplication result
subplot(1,2,1)
combi_real = real(combination);
contour(combi_real,[0 0]);
axis('image');
axis('ij');
title('multiplication_1 = log(1 + lvv .* (lvvv < 0))');


%second multiplication
recombination = combination.*lvv;
recomb_real = real(recombination);

%show plot of second multiplication result
subplot(1,2,2)
contour(recomb_real,[0 0]);
axis('image');
axis('ij');
title('multiplication_2 = multiplication_1.*lvv');

%Question 6 can be answered by looking at the result especially from second
%column(second multiplication result) which is an example how Lvvv can be
%used to enhance Lvv response.