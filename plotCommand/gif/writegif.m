function res=writegif(name,frames,delta)

% name��gif�ļ�������

% frames����ץȡ��֡

% deltaΪÿ֡��ļ��

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