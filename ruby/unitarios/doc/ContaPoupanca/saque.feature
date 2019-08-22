
Estória: Saque no caixa Eletrônico
    Sendo um cliente que possui uma conta no Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débito ou crédito.

Cenário: Saque em conta Poupança

    Dado que eu tenho R$ 1000 em minha conta poupança
    Quando faço um saque de R$ 200 reais com uma taxa de 2 reais
    Então meu saldo final deve ser R$ 798

Cenário: Deu ruim não tenho saldo

    Dado que eu tenho R$ 0 em minha conta poupança
    Quando faço um saque de R$ 100 reais
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E meu saldo final deve ser R$ 0

Cenário: Tenho saldo mas não o suficiente

    Dado que eu tenho R$ 500 reais em minha conta poupança
    Quando faço um saque de R$ 501 reais
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E meu saldo final deve ser R$ 500 reais

Cenário: Limite por saque :(

    Dado que eu tenho R$ 1000 reais em minha conta poupança
    Quando faço um saque de R$ 701 reais
    Então vejo a mensagem "Limite máximo por saque é de R$ 700"
    E meu saldo final deve ser R$ 1000 reais