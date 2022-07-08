# Test task "K-PAC in K-PAC sets"

## Subject description:
This is a Spring-based web application. It allows you to create, read, and delete data relating to K-PACs (knowledge packages) and K-PAC Sets.

This app stores data about K-PACs and K-PAC Sets in a relational database managed by MySQL.

## Functional requirements(endpoints):
- /kpacs - page where list of all K-PACs is displayed;
- /sets - page where list of all K-PAC Sets is displayed;
- /set/{id} - page where list of K-PACs attached to Set is displayed;

## Technologies:
- Java (JDK version 17)
- Spring (JDBC, MVC)
- Maven (https://maven.apache.org/)
- Database - MySQL (version 8.0.22)
- Server - Apache Tomcat (http://tomcat.apache.org/)
- IDE - IntelliJ IDEA Ultimate
- JSP

# To launch and configure the application, you will need:
1. Install [MySQL](https://dev.mysql.com/downloads/) and [Apache Tomcat 9.0.54](https://tomcat.apache.org/download-90.cgi);
2. Clone this project to your local machine;
3. Create database using ```schema.sql``` in ```resources```;
4. Add data to your DB using ```data.sql``` in ```resources```
5. Add up-to-date information(driver, URL, username, password) in ```db.properties``` in ```resources``` folder:
``` java
#MySQL properties

db.driver=YOUR_DRIVER(com.mysql.cj.jdbc.Driver)
db.url=jdbc:YOUR DATABASE URL(jdbc:mysql://localhost:3306/k-pac)
db.user=YOUR USERNAME
db.password=YOUR PASSWORD
```
5. Add Tomcat to running configuration of your project and use / as your Tomcat application context.