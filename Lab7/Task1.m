clear all
close all       %if se mask kam to kiya errode ho ga to thin line erode in circut image mask increase kr k dekhyn
SeDisk=strel('disk',3);
SeCircle=strel('square',3);
imgOutDisk=imerode(img,SeDisk);
imgimg=imread('circuit.png');
OutCircle=imerode(img,SeCircle);
% figure,imshow(imOutE)

imgShape=imread('shapes.png');
SeDiskS=strel('disk',7);
SeCircleS=strel('square',3);
imgOutDiskS=imerode(imgShape,SeDiskS);
imgOutCircleS=imerode(imgShape,SeCircleS);

imgCoins=imread('coins.png');
SeDiskC=strel('disk',7);
SeCircleC=strel('square',3);
imgOutDiskC=imerode(imgCoins,SeDiskS);
imgOutCircleC=imerode (imgCoins,SeCircleS);


subplot(3,3,1),imshow(img),title('Orginal Circuit');
subplot(3,3,2),imshow(imgOutDisk),title('Disk SE with 7');
subplot(3,3,3),imshow(imgOutCircle),title('Circle SE with 3');

subplot(3,3,4),imshow(imgShape),title('Orginal Shape');
subplot(3,3,5),imshow(imgOutDiskS),title('Disk SE with 7');
subplot(3,3,6),imshow(imgOutCircleS),title('Circle SE with 3');

subplot(3,3,7),imshow(imgCoins),title('Orginal Coins');
subplot(3,3,8),imshow(imgOutDiskC),title('Disk SE with 7');
subplot(3,3,9),imshow(imgOutCircleC),title('Circle SE with 3');