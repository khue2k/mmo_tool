DIRECTORY="/home/ec2-user/timeFarm"
FILE="time.js"
if [ -d "$DIRECTORY" ]; then
  # Di chuyển vào thư mục chứa file JavaScript
  cd "$DIRECTORY" || { echo "Không thể di chuyển vào thư mục $DIRECTORY"; exit 1; }
  
  # Kiểm tra xem file JavaScript có tồn tại không
  if [ -f "$FILE" ]; then
    # Chạy file JavaScript bằng Node.js
    node "$FILE"
  else
    echo "File $FILE không tồn tại trong thư mục $DIRECTORY"
    exit 1
  fi
else
  echo "Thư mục $DIRECTORY không tồn tại"
  exit 1
fi
