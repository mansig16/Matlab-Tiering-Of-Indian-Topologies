rgbImage = imread('/home/nofear/Downloads/image1.jpg');

[rows columns numberOfColorBands] = size(rgbImage);

set(gcf, 'Position', get(0, 'ScreenSize'));

imshow(rgbImage, []);
title('Original Color Image', 'FontSize', 20);
col1 = 1;
col2 = floor(columns/2);
col3 = col2 + 1;
row1 = 1;
row2 = floor(rows/3);
row3 = row2 + 1;


upperLeft=rgbImage(row1:row2,:,:);
lowerLeft =rgbImage(row2+row2:rows,:,:);
upperRight=rgbImage(row2:row2*2,col1:col2,:)
lowerRight = rgbImage(row2:row2*2,col2+1:columns,:);

choice=menu('Select a Option','North India','South India','East India','West India','Red States','Green States','Yellow States','Blue States')
switch(choice)
case 1
  figure()
  imshow(upperLeft);
  title('North India', 'FontSize', 20);
case 2
  figure()
  imshow(lowerLeft);
  title('South India', 'FontSize', 20);
case 3
  figure()
  imshow(lowerRight);
  title('East India', 'FontSize', 20);
case 4
  figure()
  imshow(upperRight);
  title('West India', 'FontSize', 20);
case 5
  figure() 
  % Read standard MATLAB demo image.
  rgbImage = imread('/home/nofear/Downloads/image1.jpg');

  % Display the original image.
  subplot(3, 4, 1);
  imshow(rgbImage);
  title('Original RGB Image');

  % Maximize figure.
   set(gcf, 'Position', get(0, 'ScreenSize'));

% Split the original image into color bands.
   redBand = rgbImage(:,:, 1);
   greenBand = rgbImage(:,:, 2);
   blueBand = rgbImage(:,:, 3);

% Display them.
   subplot(3, 4, 2);
   imshow(redBand);
   title('Red band');
   subplot(3, 4, 3);
   imshow(greenBand);
   title('Green band');
   subplot(3, 4, 4);
   imshow(blueBand);
   title('Blue Band');

% Threshold each color band.
   redthreshold = 68;
   greenThreshold = 70;
   blueThreshold = 72;
   redMask = (redBand > redthreshold);
   greenMask = (greenBand < greenThreshold);
   blueMask = (blueBand < blueThreshold);

% Display them.
   subplot(3, 4, 6);
   imshow(redMask, []);
   title('Red Mask');
   subplot(3, 4, 7);
   imshow(greenMask, []);
   title('Green Mask');
   subplot(3, 4, 8);
   imshow(blueMask, []);
   title('Blue Mask');

% Combine the masks to find where all 3 are "true."
   redObjectsMask = uint8(redMask & greenMask & blueMask);
   subplot(3, 4, 9);
   imshow(redObjectsMask, []);
   title('Red Objects Mask');
   maskedrgbImage = uint8(zeros(size(redObjectsMask))); % Initialize
   maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* redObjectsMask;
   maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* redObjectsMask;
   maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* redObjectsMask;
   subplot(3, 4, 10);
   imshow(maskedrgbImage);
   title('Masked Original Image');
case 6
  figure() 
  % Read standard MATLAB demo image.
  rgbImage = imread('/home/nofear/Downloads/image1.jpg');

  % Display the original image.
  subplot(3, 4, 1);
  imshow(rgbImage);
  title('Original RGB Image');

  % Maximize figure.
   set(gcf, 'Position', get(0, 'ScreenSize'));

% Split the original image into color bands.
   redBand = rgbImage(:,:, 1);
   greenBand = rgbImage(:,:, 2);
   blueBand = rgbImage(:,:, 3);

% Display them.
   subplot(3, 4, 2);
   imshow(redBand);
   title('Red band');
   subplot(3, 4, 3);
   imshow(greenBand);
   title('Green band');
   subplot(3, 4, 4);
   imshow(blueBand);
   title('Blue Band');

% Threshold each color band.
   redthreshold = 68;
   greenThreshold = 70;
   blueThreshold = 72;
   redMask = (redBand < redthreshold);
   greenMask = (greenBand > greenThreshold);
   blueMask = (blueBand < blueThreshold);

% Display them.
   subplot(3, 4, 6);
   imshow(redMask, []);
   title('Red Mask');
   subplot(3, 4, 7);
   imshow(greenMask, []);
   title('Green Mask');
   subplot(3, 4, 8);
   imshow(blueMask, []);
   title('Blue Mask');

% Combine the masks to find where all 3 are "true."
   redObjectsMask = uint8(redMask & greenMask & blueMask);
   subplot(3, 4, 9);
   imshow(redObjectsMask, []);
   title('Green Objects Mask');
   maskedrgbImage = uint8(zeros(size(redObjectsMask))); % Initialize
   maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* redObjectsMask;
   maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* redObjectsMask;
   maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* redObjectsMask;
   subplot(3, 4, 10);
   imshow(maskedrgbImage);
   title('Masked Original Image');
   
case 7
  figure() 
  % Read standard MATLAB demo image.
  rgbImage = imread('/home/nofear/Downloads/image1.jpg');

  % Display the original image.
  subplot(3, 4, 1);
  imshow(rgbImage);
  title('Original RGB Image');

  % Maximize figure.
   set(gcf, 'Position', get(0, 'ScreenSize'));

% Split the original image into color bands.
   redBand = rgbImage(:,:, 1);
   greenBand = rgbImage(:,:, 2);
   blueBand = rgbImage(:,:, 3);

% Display them.
   subplot(3, 4, 2);
   imshow(redBand);
   title('Red band');
   subplot(3, 4, 3);
   imshow(greenBand);
   title('Green band');
   subplot(3, 4, 4);
   imshow(blueBand);
   title('Blue Band');

% Threshold each color band.
   redthreshold = 200;
   greenThreshold = 200;
   blueThreshold = 100;
   redMask = (redBand > redthreshold);
   greenMask = (greenBand > greenThreshold);
   blueMask = (blueBand < blueThreshold);

% Display them.
   subplot(3, 4, 6);
   imshow(redMask, []);
   title('Red Mask');
   subplot(3, 4, 7);
   imshow(greenMask, []);
   title('Green Mask');
   subplot(3, 4, 8);
   imshow(blueMask, []);
   title('Blue Mask');

% Combine the masks to find where all 3 are "true."
   redObjectsMask = uint8(redMask & greenMask & blueMask);
   subplot(3, 4, 9);
   imshow(redObjectsMask, []);
   title('Yellow Objects Mask');
   maskedrgbImage = uint8(zeros(size(redObjectsMask))); % Initialize
   maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* redObjectsMask;
   maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* redObjectsMask;
   maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* redObjectsMask;
   subplot(3, 4, 10);
   imshow(maskedrgbImage);
   title('Masked Original Image');
   
case 8
  figure() 
  % Read standard MATLAB demo image.
  rgbImage = imread('/home/nofear/Downloads/image1.jpg');

  % Display the original image.
  subplot(3, 4, 1);
  imshow(rgbImage);
  title('Original RGB Image');

  % Maximize figure.
   set(gcf, 'Position', get(0, 'ScreenSize'));

% Split the original image into color bands.
   redBand = rgbImage(:,:, 1);
   greenBand = rgbImage(:,:, 2);
   blueBand = rgbImage(:,:, 3);

% Display them.
   subplot(3, 4, 2);
   imshow(redBand);
   title('Red band');
   subplot(3, 4, 3);
   imshow(greenBand);
   title('Green band');
   subplot(3, 4, 4);
   imshow(blueBand);
   title('Blue Band');

% Threshold each color band.
   redthreshold = 68;
   greenThreshold = 70;
   blueThreshold = 72;
   redMask = (redBand < redthreshold);
   greenMask = (greenBand > greenThreshold);
   blueMask = (blueBand > blueThreshold);

% Display them.
   subplot(3, 4, 6);
   imshow(redMask, []);
   title('Red Mask');
   subplot(3, 4, 7);
   imshow(greenMask, []);
   title('Green Mask');
   subplot(3, 4, 8);
   imshow(blueMask, []);
   title('Blue Mask');

% Combine the masks to find where all 3 are "true."
   redObjectsMask = uint8(redMask & greenMask & blueMask);
   subplot(3, 4, 9);
   imshow(redObjectsMask, []);
   title('Blue Objects Mask');
   maskedrgbImage = uint8(zeros(size(redObjectsMask))); % Initialize
   maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* redObjectsMask;
   maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* redObjectsMask;
   maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* redObjectsMask;
   subplot(3, 4, 10);
   imshow(maskedrgbImage);
   title('Masked Original Image');

otherwise
  btn = questdlg ("Close Octave?", "Some fancy title", "Yes", "No", "No");
  if (strcmp (btn, "Yes"))
    exit ();
  endif 
endswitch
