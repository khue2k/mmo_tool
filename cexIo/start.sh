#!/bin/bash

DIRECTORY="/home/ec2-user/mmo/mmo_tool/timeFarm"
FILE="time.js"
OUTPUT_FILE="/home/ec2-user/mmo/mmo_tool/timeFarm/nohup.out"
INPUT=$1

if [ -d "$DIRECTORY" ]; then
  # Di chuyển vào thư mục chứa file JavaScript
  cd "$DIRECTORY" || { echo "Không thể di chuyển vào thư mục $DIRECTORY"; exit 1; }

  # Kiểm tra xem file JavaScript có tồn tại không
  if [ -f "$FILE" ]; then
    chmod 777 start.sh
    chmod 777 $OUTPUT_FILE
    # Chạy file JavaScript bằng Node.js với dữ liệu đầu vào từ biến INPUT, ghi output vào nohup.out
    echo "$INPUT" | nohup node "$FILE" > "$OUTPUT_FILE" 2>&1 &
    echo "Chạy file JavaScript trong nền, output được ghi vào $OUTPUT_FILE"
  else
    echo "File $FILE không tồn tại trong thư mục $DIRECTORY"
    exit 1
  fi
else
  echo "Thư mục $DIRECTORY không tồn tại"
  exit 1
fi
