FROM tomcat:9.0-jdk11

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy JSP, HTML, CSS
COPY ./web /usr/local/tomcat/webapps/ROOT

# Copy source code vào thư mục tạm
COPY ./src /usr/local/src

# Compile Java -> bỏ .class vào WEB-INF/classes
RUN mkdir -p /usr/local/tomcat/webapps/ROOT/WEB-INF/classes && \
    javac -cp "/usr/local/tomcat/lib/servlet-api.jar" \
    -d /usr/local/tomcat/webapps/ROOT/WEB-INF/classes \
    $(find /usr/local/src -name "*.java")

EXPOSE 8080
CMD ["catalina.sh", "run"]
