Xvfb :1 -screen 0 800x600x16 &
/usr/bin/x11vnc -display :1.0 -usepw &
DISPLAY=:1.0
export DISPLAY
java -jar selenium-server-standalone-3.9.1.jar
