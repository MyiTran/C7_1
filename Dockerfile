FROM tomcat:9.0

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy thư mục webapp của bạn vào ROOT
COPY ./web /usr/local/tomcat/webapps/ROOT

EXPOSE 8080
CMD ["catalina.sh", "run"]
