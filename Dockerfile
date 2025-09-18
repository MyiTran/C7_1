FROM tomcat:9.0.89-jdk11

# Xoá app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy nguyên project webapp vào ROOT
COPY ./ch07_ex1_download_sol /usr/local/tomcat/webapps/ROOT

EXPOSE 8080
CMD ["catalina.sh", "run"]
