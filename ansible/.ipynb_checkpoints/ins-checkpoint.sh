yum install expect
expect <<-EOF
  set timeout 10
  spawn yum install docker-ce
  expect "y/d/N" 
  send "y\r"
  expect "y/N" 
  send "y\r"  
  expect eof 
EOF

(sleep 5 
echo ""
sleep 5
echo y)|yum install docker-ce
