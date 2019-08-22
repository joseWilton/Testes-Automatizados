require_relative '../../app/bank'

describe ContaPoupanca do
   
    describe 'Saque' do
        
        context 'quando o valor é positivo' do
            before(:all) do
                @cconta_poupanca = ContaPoupanca.new(1000.00)
                @cconta_poupanca.saque(200.00)
            end
            it 'entao atualiza o saldo' do
                expect(@cconta_poupanca.saldo).to eql 798.00
            end
        end

        context 'quando não possuir saldo' do
            before(:all) do
                @cconta_poupanca = ContaPoupanca.new(0.00)
                @cconta_poupanca.saque(100.00)
            end
            it 'então exibe a mensagem' do
                expect(@cconta_poupanca.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e meu saldo permanece zerado' do
                expect(@cconta_poupanca.saldo).to eql 0.00
            end    
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @cconta_poupanca = ContaPoupanca.new(500.00)
                @cconta_poupanca.saque(501.00)
            end
            it 'então exibe a mensagem' do
                expect(@cconta_poupanca.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece o mesmo' do
                expect(@cconta_poupanca.saldo).to eql 500.00
            end    
        end

        context 'quando o valor do saque é maior que o limite de transação' do
            before(:all) do
                @cconta_poupanca = ContaPoupanca.new(1000.00)
                @cconta_poupanca.saque(701.00)
            end
            it 'então exibe a mensagem' do
                expect(@cconta_poupanca.mensagem).to eql 'Limite máximo por saque é de R$ 500'
            end
            it 'e o saldo permanece o mesmo' do
                expect(@cconta_poupanca.saldo).to eql 1000.00
            end    
        end
    end 
end