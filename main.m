
imageSize = 512;
img = zeros(imageSize);
center = imageSize / 2;
radius = imageSize / 2;
h = imellipse(gca, [center-radius, center-radius, 2*radius, 2*radius]);
binaryMask = createMask(h);
resultImg = img .* binaryMask;
figure;
subplot(1, 2, 1), imshow(img), title('تصویر اصلی');
subplot(1, 2, 2), imshow(resultImg), title('تصویر با دایره');
```
