FROM zmkfirmware/zmk-build-arm:stable

COPY config/west.yml /app/west.yml
RUN west init -l app/ 
RUN west update
RUN west zephyr-export