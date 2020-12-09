global runloop;
            %%

while runloop
    img = getsnapshot(vid);
    img = rgb2gray(img);
    img = imresize(img,[480,640]);
    img1 = imcomplement(imbinarize(img));
    img2 = imfill(img1,'holes'); % fill holes
    img3 = bwareaopen(img2,10000); %remove objects less
    
    SE1 =strel('disk',50);
    SE2 = strel('disk',60);
    
    img4e = imerode(img3,SE1); %image erosion
    img4d = imdilate(img4e,SE2); %image dilatio
    imgfo = img3 - img4d; % getting fingers
    
    %Make image binary
    imgfo(imgfo== -1) = 0;
    imgfo =logical(imgfo);
    imgfo = bwareaopen(imgfo,5000); %removing objects less or 5000size
    
    cc = bwconncomp(imgfo);% connecting componants
    nof = cc.NumObjects; % getting the number of fingers
    imgfog = uint8(255.*imgfo);
    
    nofs= num2str(nof);
   
    noteGen(nof);
    pause(2);
end
%clear cam;
