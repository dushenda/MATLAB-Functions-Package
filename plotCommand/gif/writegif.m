function res=writegif(name,frames,delta)

% name是gif文件的名字

% frames就是抓取的帧

% delta为每帧间的间隔

nframe = length(frames);


for i=1:nframe

[image,~] = frame2im(frames(i));

[im,map] = rgb2ind(image,128);

    if i==1
    imwrite(im,map,name,'GIF','WriteMode','overwrite','DelayTime',delta,'LoopCount',inf);
    else
    imwrite(im,map,name,'WriteMode','append','DelayTime',delta);
    end

end