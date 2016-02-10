require 'socket'


s = TCPSocket.open('ger.gmane.org', 119) do |s|
  p s.gets
  s.puts "list"
  l = s.gets.chomp
  while l
    p l

    l = s.gets.chomp
    l = nil if l == "."
  end
end
