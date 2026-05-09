# language: pt
Funcionalidade: Calculadora Web
  Como um usuário do sistema
  Eu quero realizar operações matemáticas
  Para obter resultados rápidos e precisos

  Contexto:
    Dado que eu acessei a interface da calculadora no navegador

  Cenário: Soma de dois números inteiros
    Quando eu clico no botão "7"
    E eu clico no botão "+"
    E eu clico no botão "8"
    E eu clico no botão "="
    Então o visor deve exibir "15"

  Cenário: Subtração resultando em número negativo
    Quando eu clico no botão "5"
    E eu clico no botão "-"
    E eu clico no botão "9"
    E eu clico no botão "="
    Então o visor deve exibir "-4"

  Cenário: Multiplicação simples
    Quando eu clico no botão "6"
    E eu clico no botão "*"
    E eu clico no botão "4"
    E eu clico no botão "="
    Então o visor deve exibir "24"

  Cenário: Divisão com resultado decimal
    Quando eu clico no botão "9"
    E eu clico no botão "/"
    E eu clico no botão "2"
    E eu clico no botão "="
    Então o visor deve exibir "4.5"

  Cenário: Limpar o visor (Botão C)
    Quando eu clico no botão "1"
    E eu clico no botão "2"
    E eu clico no botão "C"
    Então o visor deve estar vazio

  Cenário: Erro ao realizar operação inválida
    Quando eu clico no botão "*"
    E eu clico no botão "/"
    E eu clico no botão "="
    Então o visor deve exibir "Erro"
  
  Cenário: Divisão por zero
    Quando eu clico no botão "5"
    E eu clico no botão "/"
    E eu clico no botão "0"
    E eu clico no botão "="
    Então o visor deve exibir "Infinity"