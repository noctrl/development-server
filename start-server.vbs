Dim sh, fcgiPort, PHPini

fcgiPort = "127.0.0.1:9000"
PHPini = "c:\Users\mjholler\Desktop\nginx\php\php.ini"

Set sh = WScript.CreateObject("WScript.Shell")

' Navigate to the the nginx folder and run the server
sh.run "cmd /K CD C:\Users\mjholler\Desktop\nginx\ & start nginx", 0

' Navigate to the PHP folder and start the FastCGI executable
sh.run "cmd /K CD C:\Users\mjholler\Desktop\nginx\php\ & php-cgi.exe -b "& fcgiPort &" -c "& PHPini, 0

' Navigate to MySQL and start
'sh.run "cmd /k CD C:\nginx\mysql\bin\ & mysqld", 0


Set sh = Nothing