f = File.read("./2.encode")
p f
arr = f.split(/\n/)
p arr
merge = []
arr.each do |ar|
  a = ar.split(/ /)
  a.each{|aa| merge.push aa}
  #merge.push a
end

s = merge.join("")
p s
ss = s.scan(/../).map { |x| x.hex.chr }.join
File.write("./2.decode", ss)

