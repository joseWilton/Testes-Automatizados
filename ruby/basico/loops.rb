=begin
5.times do |i|
    puts 'Repetindo a mensagem ' +i.to_s+' vezes'
end
=end
=begin
init = 0

while init <= 10 do
    puts 'Repetindo a mensagem ' +init.to_s+' vezes'
    init += 1
end


for item in (0...10)
    puts 'Repetindo a mensagem ' +item.to_s+' vezes'
end
=end

nomes = ['joão','edu','maria']

nomes.each do |n|
    puts n 
end