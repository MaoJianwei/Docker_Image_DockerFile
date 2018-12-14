# Run
sudo docker run -idt --name xxx --restart always -v /home/<custom-dir>/:/var/xxx/xxx -p 8080:8080 -p 443:443 maojianwei2020/xxx:xxx

# Mysql
sudo docker run -idt --name MySql --restart always -v /home/mao/maodisk/maoDataBase/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=<password> -p 3306:3306 mysql:5.7.23

# To support HTTPS

Come into container terminal:
sudo docker exec -i -t <container-name> bash


Add the following to C:\Program Files\Atlassian\JIRA\conf\server.xml
```
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
	useBodyEncodingForURI="true"/>
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