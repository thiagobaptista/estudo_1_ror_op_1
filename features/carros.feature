#language: pt

Funcionalidade: Carros
    Para vender meu carro
    Como um usuário do sistema
    Eu quero registrar meu carro
    
    Cenario: registrando um carro
        Dado que estou na página inicial
        E preencho o campo "carro[nome]" com "Monza"
        E preencho o campo "carro[descricao]" com "Muito bom estado."
        E preencho o campo "carro[preco]" com "5000".
        E aperto o botão "Anunciar!"
        Entao eu deveria ver "Muito bom estado."
