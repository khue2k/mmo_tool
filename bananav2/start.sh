#!/bin/bash

DIRECTORY="/home/ec2-user/mmo/mmo_tool/bananav2"
FILE="banana.js"
OUTPUT_FILE="/home/ec2-user/mmo/mmo_tool/bananav2/nohup.out"

if [ -d "$DIRECTORY" ]; then
  # Di chuyển vào thư mục chứa file JavaScript
  cd "$DIRECTORY" || { echo "Không thể di chuyển vào thư mục $DIRECTORY"; exit 1; }

  # Kiểm tra xem file JavaScript có tồn tại không
  if [ -f "$FILE" ]; then
    # Chạy file JavaScript bằng Node.js với dữ liệu đầu vào từ biến INPUT, ghi output vào nohup.out
    chmod 777 FILE
    echo "" | nohup node "$FILE" > "$OUTPUT_FILE" 2>&1 &
    echo "Chạy file JavaScript trong nền, output được ghi vào $OUTPUT_FILE"
  else
    echo "File $FILE không tồn tại trong thư mục $DIRECTORY"
    exit 1
  fi
else
  echo "Thư mục $DIRECTORY không tồn tại"
  exit 1
fi
