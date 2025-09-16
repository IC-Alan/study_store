import os
import random
import shutil
from PIL import Image

def find_images(root_dir, size=(370, 370), ext=".gif"):
    """递归查找符合尺寸的图片"""
    images = []
    for dirpath, _, files in os.walk(root_dir):
        for file in files:
            if file.lower().endswith(ext):
                full_path = os.path.join(dirpath, file)
                try:
                    with Image.open(full_path) as img:
                        if img.size == size:
                            images.append(full_path)
                except:
                    pass
    return images

def copy_random_images(src_list, dest_dir, count):
    """随机选择图片拷贝到目标文件夹，重名跳过"""
    os.makedirs(dest_dir, exist_ok=True)
    random.shuffle(src_list)
    copied = 0
    for src_path in src_list:
        if copied >= count:
            break
        filename = os.path.basename(src_path)
        dest_path = os.path.join(dest_dir, filename)
        if not os.path.exists(dest_path):
            shutil.copy2(src_path, dest_path)
            copied += 1
    print(f"成功复制 {copied} 张图片到 {dest_dir}")

if __name__ == "__main__":
    root_dir = input("请输入根目录（例如 ./calligraphy）: ").strip()
    dest_dir = input("请输入目标文件夹路径: ").strip()
    try:
        count = int(input("请输入需要复制的图片数量: ").strip())
    except ValueError:
        print("数量必须是整数！")
        exit(1)

    images = find_images(root_dir)
    if not images:
        print("未找到符合条件的图片！")
    else:
        copy_random_images(images, dest_dir, count)
