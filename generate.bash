#!/bin/bash

# 生成 PDF 的脚本
# 用法: ./generate_pdf.sh

# 输入文件和输出文件
INPUT_FILE="Menu.md"
OUTPUT_FILE="Menu.pdf"

# 运行 pandoc 命令
pandoc "$INPUT_FILE" -o "$OUTPUT_FILE" \
--pdf-engine=xelatex \
--toc \
--toc-depth=3 \
-V toc-title="自用已做过菜谱(不定期更新)" \
-V CJKmainfont="仿宋" \
-V geometry:"left=1cm,right=1cm,top=1.5cm,bottom=1.5cm"

# 检查是否成功生成
if [ -f "$OUTPUT_FILE" ]; then
    echo "✅ PDF 文件已成功生成: $OUTPUT_FILE"
else
    echo "❌ PDF 文件生成失败"
    exit 1
fi