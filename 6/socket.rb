def question port
  p 222
  q = ''
  while true
    c = port.getc
    if c == '='
      port.getc
      print q
      print c
      a = eval q
      print a
      port.puts a
      break
    end
    q = q + c
  end
  p "\n"
  p 11333
end

require 'socket'
port = TCPSocket.open("tekeisan-ekusutoriim.chall.beginners.seccon.jp",8690)
num = 0
while true do
  line = port.gets
  print line
  if line =~ /(Stage.\d+)/
    if num > 1
      question port
    end
    num = num + 1
  end
end

