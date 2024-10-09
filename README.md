<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

# 🛠️Sistema Web para Freelancers

Bem-vindo ao repositório do **Sistema Web para Freelancers**, uma aplicação robusta e dinâmica destinada a otimizar o gerenciamento de horas trabalhadas por freelancers. Este projeto proporciona uma interface intuitiva e ferramentas poderosas para rastrear e registrar horas de trabalho, garantindo eficiência e organização.

## 📋Pré-requisitos

Antes de iniciar, certifique-se de que você possui as seguintes ferramentas instaladas em seu ambiente:

- PHP 8+
- Composer 2+
- Node.js 14+
- NPM

## **🚀Instalação**
Siga os passos abaixo para configurar o projeto em sua máquina local:

#1. **Clone o repositório**
   Execute o seguinte comando para clonar o repositório:
   ```bash
   git clone https://github.com/RaphaelTW/freelance_hours.git
   ```

#2. **Acesse a pasta do projeto**
Navegue até a pasta do projeto:
```bash
cd freelance_hours
```
#3. **Instale as dependências do Composer**
Utilize o Composer para instalar as dependências do PHP:
```bash
composer install
```
#4. **Instale as dependências do NPM**
Execute o seguinte comando para instalar as dependências do Node.js:
```bash
npm install
```
#5. **Crie o arquivo .env**
Gere um arquivo .env com base no .env.example. Você pode fazer isso manualmente ou utilizando um editor de texto.

#6. **Gere a chave da aplicação**
Execute o comando abaixo para gerar uma nova chave de aplicação:
```bash
php artisan key:generate
```
#7. **Realize as migrações do banco de dados**
Para criar as tabelas necessárias, execute:
```bash
php artisan migrate
```
#8. **Popule o banco de dados com dados iniciais para Teste**
Utilize o seguinte comando para popular o banco de dados:
```bash
php artisan db:seed
```
#9. **Construa os assets com Vite**
Para compilar os assets da aplicação, execute:
```bash
npm run build
```
#10. **Inicie o servidor local**
Finalmente, para rodar o projeto em seu ambiente local, utilize:
```bash
php artisan serve
```

## **🤝Contribuições**
Contribuições são bem-vindas! Se você deseja colaborar, siga estas etapas:

1. Crie um fork do repositório.
2. Crie uma nova branch com a sua funcionalidade: git checkout -b feature/minha-funcionalidade
3. Commit suas alterações: git commit -m 'Adiciona minha nova funcionalidade'
4. Envie para o repositório original: git push origin feature/minha-funcionalidade
5. Abra um Pull Request.

## **📝Licença**
Este projeto está licenciado sob a Licença MIT.
