import os
import re
import argparse

def process_md_files(directory):
    """
    处理目录中所有.md文件：
    1. 在文件开头添加YAML Front Matter
    2. 转换维基链接语法
    """
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if filename.endswith('.md'):
                filepath = os.path.join(root, filename)
                with open(filepath, 'r+', encoding='utf-8') as f:
                    # 读取文件内容
                    content = f.read()
                    
                    # 生成YAML Front Matter
                    title = os.path.splitext(filename)[0]
                    yaml_front_matter = f"""---
title: "{title}"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

"""
                    # 转换维基链接语法
                    # 处理基本链接 [[filename]]
                    content = re.sub(r'\[\[([^\]\|#]+)\]\]', r'[\1](\1.md)', content)
                    # 处理带别名的链接 [[alias|filename]]
                    content = re.sub(r'\[\[([^\]\|#]+)\|([^\]\|#]+)\]\]', r'[\1](\2.md)', content)
                    # 处理带锚点的链接 [[#anchor]] 或 [[filename#anchor]]
                    content = re.sub(r'\[\[([^\]\|#]+)?#([^\]\|#]+)\]\]', 
                                    lambda m: f'[{m.group(2)}]({m.group(1) or ""}.md#{m.group(2)})' 
                                    if m.group(1) else f'[#{m.group(2)}](#{m.group(2)})', 
                                    content)
                    
                    # 组合新内容并写回文件
                    f.seek(0)
                    f.write(yaml_front_matter + content)
                    f.truncate()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='处理Markdown文件：添加YAML Front Matter并转换维基链接')
    parser.add_argument('directory', help='要处理的文件夹路径')
    args = parser.parse_args()
    
    process_md_files(args.directory)
    print(f"处理完成！所有.md文件已更新。")
