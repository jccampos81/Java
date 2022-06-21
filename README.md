# Java
Projetos Java

# Eleições - Teste Data A

Projeto teste com a finalidade de testar os conhecimentos de um candidato a vaga de desenvolvedor Java.
Basicamente o sistema possui cadastros de cargos, candidatos, login e eleições. O cadastro de candidados tem opção para envio de foto.
O usuário pode estar em dois níveis: eleitor ou administrador. O usuário eleitor pode apenas fazer a votação no candidato escolhido por ele.
No final da votação, um protocolo é gerado, um resumo dos votos é apresentado e o eleitor não pode mais votar na mesma eleição. A eleição possui 
controle de data de início e fim.

## 🚀 Começando

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

### 📋 Pré-requisitos

De que coisas você precisa para instalar o software e como instalá-lo?

```
É necessário ter a máquina virtual Java instalada em seu sistema operacional. 
O sistema precisa da versão 8 do Java.
É necessário também uma instância do banco de dados MySQL rodando na porta 3306
Deve estar criado um banco de dados com o seguinte nome: eleicoes
Deve existir no MySQL um usuário chamado: "springuser" e com password: "Ccomp2000"
A porta 8080 deve estar disponível para execução do sistema.
```

### 🔧 Instalação

Exemplo de como você deve fazer para rodar o sistema:

A etapa será da seguinte forma:

Acesse o prompt de comando, entre no diretório principal do projeto e dentro dele existe um arquivo chamado Eleicoes-1.0.jar.
Esse é o arquivo principal do projeto. Com sua variável de ambiente "JAVA_HOME" devidamente configurada em seu sistema operacional, execute o seguinte 
comando: java -jar Eleicoes-1.0.jar

```
java -jar Eleicoes-1.0.jar
```

Outra forma de rodar o sistema e disponibilizar na porta 8081 por exemplo:

```
java -jar Eleicoes-1.0.jar --server.port=8081
```

## ⚙️ Executando os testes

Acesse em seu navegador o endereço: http://localhost:8080

Para testar faça o seguinte: Clique no menu login e entre com o CPF: 04569855652 e com a senha 123. 
Dessa forma você terá acesso a todas as funcionalidades do sistema, como cadastros e votação.

### 🔩 Analise os testes de ponta a ponta

Tente ao terminar sua votação, votar novamente. O sistema não permitirá, pois o eleitor já fez seu voto.
Tente também entrar no link Eleições 2021. O sistema não permitirá, pois a data de validade já foi atingida.

```
Tente acessar a mesma eleição após terminar e verá que o sistema redirecionará para um resumo de sua votação.
```

### ⌨️ E testes de estilo de codificação

Todo o código fonte está devidamente documentado.

```
Alguns métodos tem seu nome intuitivo e colocados numa sequência lógica para entendimento de outros programadores.
```

## 📦 Desenvolvimento

Num sistema ativo, o sistema poderá rodar num servidor Tomcat, fazendo deploy do arquivo .war

## 🛠️ Construído com

As ferramentas usadas para criação do sistema foram:

* [Maven](https://maven.apache.org/) - Ferramenta de automação e compilação
* [Visual Studio Code](https://code.visualstudio.com/) - IDE Editor de código fonte da Microsoft
* [Spring-boot](https://spring.io/projects/spring-boot) - Framework
* [Thymeleaf](https://www.thymeleaf.org/) - Mecanismo de template. 

## 📌 Versão

1.0 - Alfa para testes.

## ✒️ Autores

Data A - Projeto solcitado

Juliano Carvalho Campos - Candidado desenvolvedor

## 📄 Licença

Free para desenvolvimento

## 🎁 Expressões de gratidão

* Confie no Senhor
* Seja sempre honesto
* Respeite o próximo

---
Juliano Carvalho Campos
(35)9.8802-6075
