%load('flow.mat')
constrast1 = 1;
offset1 = 0;
constrast2 = 2;
offset2 = 0;
constrast3 = 2;
offset3 = 0;
imgs = cast(uvi_f{1},'double')/256;
imgs1 = imgs(:,:,1);
imgs2 = imgs1;
imgs2(:,:,2) = (imgs(:,:,2)-offset2)*constrast2;
imgs2(:,:,3) = (imgs(:,:,3)-offset3)*constrast3;

imtool(mirrorHorz(imgs2))