# begin
#     file = File.open('ola.txt')

#     if file  # verifica se o arquivo existe
#         puts file.read
#     end
# rescue Exception => e 
#     puts e.message
#     puts e.backtrace    

# end

def soma(n1, n2)
    puts n1+n2

rescue Exception => e  #passando uma exception dentro do método
    puts "Erro ao executar a soma: #{e}"
end

soma(4, 3)