require_relative '../../app/bank'

describe ContaCorrente do
   
    describe 'Saque' do
        
        context 'quando o valor é positivo' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(1000.00)
                @conta_corrente.saque(200.00)
            end
            it 'entao atualiza o saldo' do
                expect(@conta_corrente.saldo).to eql 795.00
            end
        end

        context 'quando não possuir saldo' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(0.00)
                @conta_corrente.saque(100.00)
            end
            it 'então exibe a mensagem' do
                expect(@conta_corrente.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e meu saldo permanece zerado' do
                expect(@conta_corrente.saldo).to eql 0.00
            end    
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(500.00)
                @conta_corrente.saque(501.00)
            end
            it 'então exibe a mensagem' do
                expect(@conta_corrente.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece o mesmo' do
                expect(@conta_corrente.saldo).to eql 500.00
            end    
        end

        context 'quando o valor do saque é maior que o limite de transação' do
            before(:all) do
                @conta_corrente = ContaCorrente.new(1000.00)
                @conta_corrente.saque(701.00)
            end
            it 'então exibe a mensagem' do
                expect(@conta_corrente.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'e o saldo permanece o mesmo' do
                expect(@conta_corrente.saldo).to eql 1000.00
            end    
        end
    end 
end