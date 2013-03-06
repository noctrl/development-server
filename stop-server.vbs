Dim sh, fcgiPort, PHPini

Set sh = WScript.CreateObject("WScript.Shell")

' Navigate to the the nginx folder and shut it down
sh.run "cmd /K CD C:\Users\mjholler\Desktop\nginx\ & nginx -s quit", 0

' Shutdown PHP FastCGI
sh.run "cmd taskkill /f /IM php-cgi.exe", 0

' Navigate to MySQL and shutdown the server
'sh.run "cmd /k CD C:\Users\mjholler\Desktop\nginx\mysql\bin\ & mysqladmin -u root shutdown", 0