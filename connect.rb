require 'socket'

def read(s)
  begin
    l = s.gets.chomp
    p l
    break if l == "." || l[/^(480|501)/]
  end while l
end

s = TCPSocket.open('ger.gmane.org', 119) do |s|
  p s.gets
  s.puts "list"
  read(s)

  s.puts 'post'
  read(s)
  s.puts 'AUTHINFO USER tgauthier'
  read(s)

end
