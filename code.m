close all
mycolor=hsv;
subplot 131
plot(mycolor(:,1))
title('R of spring')
axis([0 70 -0.2 1.2])
grid on
subplot 132
plot(mycolor(:,2));
title('G of spring')
axis([0 70 -0.2 1.2])
grid on
subplot 133
plot(mycolor(:,3));
axis([0 70 -0.2 1.2])
title('B of spring')
grid on

len=input('input the length of the colormap');
R=zeros(len,1);
G=zeros(len,1);
B=zeros(len,1);
for i=1:len
    R(i,1)=1;
    G(i,1)=(1/(len-1))*i-(1/(len-1));
    B(i,1)=(1/(1-len))*i-(len/(1-len));%按照函数关系，得RGB个通道分量
end
mycolopmap=[R G B];%RGB组合成色度矩阵
figure(1)
river=imread('Fig0110.TIF');
subplot 121
imshow(river)
colormap(mycolopmap);
colorbar
title('按照函数关系得到的spring（100）')
subplot 122
imshow(river)
colormap spring(100)
colorbar
title('系统的spring（100）')
