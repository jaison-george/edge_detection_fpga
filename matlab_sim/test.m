 clear all; 
 close all; 
 colormap bone;
%  X=phantom('Modified Shepp-Logan',200); 
 brain_img=load('Head.mat')
 X=brain_img.Head;
 [img_out1] = sobel(X);
 [img_out2] = canny(X);
 figure;
 subplot(1,3,1); 
 imagesc(X); 
 title('Original');axis image;
 subplot(1,3,2); 
 imagesc((img_out1));
 title('Sobel'); axis image;
 subplot(1,3,3); 
 imagesc((img_out2));
 title('Canny'); axis image;
 