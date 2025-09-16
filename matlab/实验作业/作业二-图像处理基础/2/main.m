I = imread(".\origin.jpg");
GR = RGBtoGray(I);
imwrite(GR, 'gray_image.png');
B = RGBtoBin(I);
imwrite(B, 'binary_image.png');
subplot(2, 3, 1);
imshow(I);
subplot(2, 3, 2);
imshow(GR);
subplot(2, 3, 3);
imshow(B);

count_GR(GR);

count_B(B);

% 真彩色转灰度
function GR = RGBtoGray(I)
    GR =  uint8(0.299*I(:,:,1) + 0.587*I(:,:,2) + 0.114*I(:,:,3));
end

% 真彩色转二值
function B = RGBtoBin(I)
    G = RGBtoGray(I);
    B = uint8(G > 128);
end

% 统计灰度图像像素值的数量
function count_GR(GR)
pixel_countGR = zeros(1, 256);
[rows, cols] = size(GR);
for i = 1:rows
    for j = 1:cols
       pixel_value = GR(i, j);
       pixel_countGR(pixel_value + 1) = pixel_countGR(pixel_value + 1) + 1;
    end
end

subplot(2, 3, 5);
plot(0:255, pixel_countGR, 'b-');
title('灰度图像像素值统计');
xlabel('像素值');
ylabel('数量');
grid on;
end

% 统计二值图像像素值的数量
function count_B(B)
pixel_countB = zeros(1, 2);
[rows, cols] = size(B);
for i = 1:rows
    for j = 1:cols
       pixel_value = B(i, j);
       pixel_countB(pixel_value + 1) = pixel_countB(pixel_value + 1) + 1;
    end
end

subplot(2, 3, 6);
bar(0:1, pixel_countB, 'b');
title('二值图像像素值统计');
xlabel('像素值');
ylabel('数量');
grid on;
end