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

## jsp
拡張子がjsp  
javaを記載する箇所には<%　%>の中に記載  
javaを表示する箇所には<%= %>で記載する  
hiddenは重要じゃない情報を取り扱う場合は使用して良いが重要な情報は取り扱わない