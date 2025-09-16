% 批量二值化当前文件夹下所有灰度图
% 脚本文件名: batch_binarize.m

% 支持的图片格式
exts = {'*.jpg','*.png','*.bmp','*.tif','*.gif'};

% 收集所有图片文件
files = [];
for i = 1:length(exts)
    files = [files; dir(exts{i})];
end

if isempty(files)
    disp('当前文件夹没有找到图片文件');
    return;
end

for k = 1:length(files)
    % 读取图像
    fname = files(k).name;
    I = imread(fname);

    % 如果是索引图像，转换为灰度
    if ~islogical(I) && ndims(I) == 2
        % 已经是灰度图，直接用
        grayI = I;
    else
        % 如果是RGB图（防万一）
        if ndims(I) == 3
            grayI = rgb2gray(I);
        else
            grayI = I;
        end
    end
    
    % 二值化 (Otsu 自动阈值)
    BW = imbinarize(grayI);

    % 显示
    figure, imshow(I);
    title(['二值化结果: ', fname]);
end
