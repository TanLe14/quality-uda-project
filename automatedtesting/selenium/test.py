from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager

# Khởi tạo dịch vụ cho ChromeDriver
service = ChromeService(ChromeDriverManager().install())

# Khởi tạo trình duyệt Chrome với dịch vụ đã được quản lý bởi webdriver_manager
driver = webdriver.Chrome(service=service)

# Mở trang web bất kỳ để kiểm tra
driver.get("https://www.google.com")

# Đóng trình duyệt sau khi hoàn thành tác vụ
driver.quit()