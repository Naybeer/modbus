FROM eclipse-mosquitto:latest

# คัดลอกไฟล์ config ไปยังโฟลเดอร์ของ Mosquitto
COPY ./mosquitto-config/mosquitto.conf /mosquitto/config/mosquitto.conf
COPY ./mosquitto-config/passwd /mosquitto/config/passwd
COPY ./mosquitto-config/setup.sh /mosquitto/config/setup.sh

# ทำให้ entrypoint.sh สามารถรันได้
RUN chmod +x /mosquitto/config/setup.sh

ENTRYPOINT ["/mosquitto/config/setup.sh"]

# สร้างโฟลเดอร์สำหรับ data
VOLUME ["/mosquitto/data", "/mosquitto/log", "/mosquitto/config"]
