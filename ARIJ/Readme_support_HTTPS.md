# Run
sudo docker run -idt --name xxx -v /home/\<custom-dir\>/:/var/xxx/xxx -p 8080:8080 -p 443:443 maojianwei2020/xxx:xxx

# Mysql
### ARIJ 7.x
sudo docker run -idt --name MySql --restart always -v /home/mao/maodisk/maoDataBase/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=<password> -p 3306:3306 mysql:5.7.23

mycli -u root

create database arij CHARACTER SET utf8 COLLATE utf8_bin

### ARIJ 8.x
sudo docker run -idt --name MySql --restart always -v /home/mao/maodisk/maoDataBase/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=<password> -p 3306:3306 maojianwei2020/mysql_jira_utf8mb4:5.7.23

mycli -u root

create database arij CHARACTER SET utf8mb4 COLLATE utf8mb4_bin

# To support HTTPS

Come into container terminal:
sudo docker exec -i -t <container-name> bash


Add the following to C:\Program Files\Atlassian\JIRA\conf\server.xml
```
<!-- We may not need keyAlias property, 8.1.0 -->
<!-- relaxedPathChars and relaxedQueryChars is required by 7.13.3+ 8.1.0+ -->
<!-- Attention! We should copy the config from Github readme instead of Docker Hub! -->
<Connector 
	SSLEnabled="true" 
	acceptCount="100" 
	clientAuth="false" 
	connectionTimeout="20000" 
	disableUploadTimeout="true" 
	enableLookups="false" 
	keyAlias="<alias>" 
	keystoreFile="<path to JKS file>" 
	keystorePass="<password of JKS>" 
	keystoreType="JKS" 
	maxHttpHeaderSize="8192" 
	maxSpareThreads="75" 
	maxThreads="150" 
	minSpareThreads="25" 
	port="443" 
	protocol="org.apache.coyote.http11.Http11NioProtocol" 
	scheme="https" 
	secure="true" 
	sslProtocol="TLS" 
	useBodyEncodingForURI="true"
	relaxedPathChars="[]|" relaxedQueryChars="[]|{}^&#x5c;&#x60;&quot;&lt;&gt;"
/>
```

Add the following to C:\Program Files\Atlassian\JIRA\atlassian-jira\WEB-INF\web.xml
```
	<!-- Redirect HTTP to HTTPS -->
	<security-constraint>
		<display-name>HTTP to HTTPs Redirection</display-name>
		<web-resource-collection>
			<web-resource-name>all-except-attachments</web-resource-name>
			<url-pattern>*.jsp</url-pattern>
			<url-pattern>*.jspa</url-pattern>
			<url-pattern>/browse/*</url-pattern>
		</web-resource-collection>
		<user-data-constraint>
			<transport-guarantee>CONFIDENTIAL</transport-guarantee>
		</user-data-constraint>
	</security-constraint>
```
