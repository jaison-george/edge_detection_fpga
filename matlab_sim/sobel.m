function [ img_out] = sobel(X)
% clear all; close all; X=phantom('Modified Shepp-Logan',200); [img_out] = sobel(X); figure; subplot(1,2,1); imshow(X); subplot(1,2,2); imshow(abs(img_out))
%X input color image
X= double(X); height = size(X, 1); width = size(X, 2); channel = size(X, 3);
img_out = X;
Gx = [1 +2 +1; 
      0 0 0;
      -1 -2 -1]; 
Gy = Gx';
for i = 2 : height-1
   for j = 2 : width-1  
       for k = 1 : channel
           temp_img = X(i - 1 : i + 1, j - 1 : j + 1, k);
           a=(sum(Gx.* temp_img));
           x = sum(a);
           b= (sum(Gy.* temp_img));
            y = sum(b);
           pixValue =sqrt(x.^2+ y.^2);
          % pixValue =(x-y);
           img_out(i, j, k) = pixValue;
       end 
   end
end