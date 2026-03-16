import os
import re
import argparse
from urllib.parse import unquote, urlparse

def remove_spaces_in_filenames(directory):
    """
    递归删除目录中所有.md文件名中的空格
    返回重命名映射字典 {旧路径: 新路径}
    """
    rename_map = {}
    
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if filename.endswith('.md'):
                old_path = os.path.join(root, filename)
                
                # 创建新文件名（删除空格）
                new_filename = filename.replace(' ', '')
                new_path = os.path.join(root, new_filename)
                
                # 处理文件名冲突
                counter = 1
                while os.path.exists(new_path) and new_path != old_path:
                    name, ext = os.path.splitext(new_filename)
                    new_filename = f"{name}_{counter}{ext}"
                    new_path = os.path.join(root, new_filename)
                    counter += 1
                
                # 重命名文件
                if new_path != old_path:
                    os.rename(old_path, new_path)
                    rename_map[old_path] = new_path
                    print(f"重命名: {old_path} -> {new_path}")
    
    return rename_map

def process_links_in_file(file_path, rename_map):
    """
    处理文件中的链接：删除链接目标路径中的空格
    """
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 模式匹配Markdown链接 [text](target)
    link_pattern = r'\[([^\]]+?)\]\(([^)]+?)\)'
    
    def replace_link(match):
        link_text = match.group(1)
        link_target = match.group(2)
        
        # 解析链接目标
        parsed = urlparse(link_target)
        
        # 只处理相对路径或本地文件路径
        if not parsed.scheme and not link_target.startswith(('http://', 'https://', '#')):
            # 处理URL编码的空格（%20）
            unquoted_target = unquote(link_target)
            
            # 删除路径部分中的空格
            dir_name, file_name = os.path.split(unquoted_target)
            new_file_name = file_name.replace(' ', '')
            new_target = os.path.join(dir_name, new_file_name) if dir_name else new_file_name
            
            # 处理Windows路径分隔符
            new_target = new_target.replace('\\', '/')
            
            # 保留锚点和查询参数
            if parsed.fragment:
                new_target += '#' + parsed.fragment
            if parsed.query:
                new_target += '?' + parsed.query
            
            # 返回新链接
            return f'[{link_text}]({new_target})'
        
        return match.group(0)
    
    # 替换所有匹配的链接
    new_content = re.sub(link_pattern, replace_link, content)
    
    # 写入文件（仅当内容有变化时）
    if new_content != content:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f"已更新链接: {file_path}")

def main(directory):
    # 第一步：删除文件名中的空格
    print("正在处理文件名中的空格...")
    rename_map = remove_spaces_in_filenames(directory)
    
    # 第二步：处理文件内容中的链接
    print("\n正在处理文件中的链接...")
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if filename.endswith('.md'):
                file_path = os.path.join(root, filename)
                process_links_in_file(file_path, rename_map)
    
    print("\n处理完成！")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='删除Markdown文件名和链接中的空格')
    parser.add_argument('directory', help='要处理的目录路径')
    args = parser.parse_args()
    
    main(args.directory)
