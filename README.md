# web.xmlの説明
 
 < servlet><br>
	< servlet-name>hello< /servlet-name><br>  
	< servlet-class>tomcat_test.tomcat< /servlet-class><br>  
 < /servlet><br>  

上記ではhelloという名前でtomcat_testパッケージのtomcatクラスを指している<br>

< servlet-mapping><br>
< servlet-name><br>
hello<br>
< /servlet-name><br>
< url-pattern><br>
/servlet/hello<br>
< /url-pattern><br>
< /servlet-mapping><br>

上記ではhelloと名付けたservlet-nameがどういうURLパターンになるか<url-pattern>で指定<br>  
http://localhost:8080/