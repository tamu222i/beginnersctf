a = File.read("./part2")
p a
tables = {
32=>32,
58=>58,
52=>52,
123=>123,
48=>48,
10=>10,
95=>95,
33=>33,
} 
('a'..'z').each do |c|
  o = c.ord + 8
  tables[c.ord] = (o > 'z'.ord) ? o - 26 : o
end
('A'..'Z').each do |c|
  o = c.ord + 8
  tables[c.ord] = (o > 'Z'.ord) ? o - 26 : o
end
p tables
decrypt = ''
a.each_byte.each do |b|
  decrypt += tables[b].chr
end
p decrypt
