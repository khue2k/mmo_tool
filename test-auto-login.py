from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

# Khởi tạo trình duyệt Chrome
driver = webdriver.Chrome()

# Mở trang YouTube
driver.get("https://youtube.com")

# Đợi một chút để trang YouTube tải
time.sleep(3)

# Tìm phần tử input của ô tìm kiếm
search_element = driver.find_element("name", "search_query")  # Sử dụng tên chính xác của trường tìm kiếm

# Nhập từ khóa tìm kiếm vào ô tìm kiếm
search_element.send_keys("khue123")

# Nhấn phím Enter để thực hiện tìm kiếm
search_element.send_keys(Keys.ENTER)

# Chờ một chút để đảm bảo trang đã load hoàn toàn
time.sleep(500)

# Thực hiện các thao tác tiếp theo trên trang YouTube nếu cần

# Không đóng trình duyệt
# driver.quit()  # Lệnh này đã được bỏ qua

