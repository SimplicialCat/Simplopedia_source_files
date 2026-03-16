import os
import csv
from datetime import datetime

def count_md_chars():
    # 获取当前工作目录
    current_dir = os.getcwd()
    
    # 获取所有.md文件
    md_files = [f for f in os.listdir(current_dir) 
               if f.lower().endswith('.md') and os.path.isfile(f)]
    
    # 检查是否有.md文件
    if not md_files:
        print("未找到任何.md文件")
        return
    
    # 准备CSV文件名（包含时间戳避免覆盖）
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    csv_filename = f"md_char_counts_{timestamp}.csv"
    
    # 统计并写入CSV文件
    with open(csv_filename, 'w', newline='', encoding='utf-8-sig') as csvfile:
        # 创建CSV写入器
        writer = csv.writer(csvfile)
        
        # 写入标题行
        writer.writerow(["文件名", "字符数", "统计时间"])
        
        # 统计每个文件的字符数并写入CSV
        for file in md_files:
            try:
                with open(file, 'r', encoding='utf-8') as f:
                    content = f.read()
                    char_count = len(content)
                    # 写入数据行
                    writer.writerow([file, char_count, datetime.now().strftime("%Y-%m-%d %H:%M:%S")])
            except Exception as e:
                print(f"读取文件 {file} 时出错: {str(e)}")
                # 即使出错也写入文件名（字符数为空）
                writer.writerow([file, "读取错误", datetime.now().strftime("%Y-%m-%d %H:%M:%S")])
    
    print(f"统计完成! 结果已保存到: {csv_filename}")
    print(f"您可以用Excel打开此CSV文件查看结果")

if __name__ == "__main__":
    count_md_chars()
