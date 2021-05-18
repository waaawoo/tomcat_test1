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

## コネクションプール
DBとファイルの直接やりとりになり  
接続が残らない  
コネクションプールがあると、ファイルからコネクションプールへアクセスがいく  
アクセスが切れるとプーリングからDBのアクセスは残る  
ServletへDBの接続設定が不要になる（設定が一箇所でよくなる）  
DB接続負荷が発生しない  
接続をプールして使い回す  
設定ファイル context.xml  
Resource　nameで指定した名前を呼び出す時に使う  
maxTotalは何本プールに残すかを設定  
maxldleは最大接続数設定  
maxWaitMillisは接続タイム何秒かを設定  

show status like 'Threads_connected';  
上記でコネクション数を確認できる  
接続が2になっていればコレクションプールを使用できている 