# Usar a imagem oficial do Python como base
FROM python:3.9-slim

# Atualiza o pip para a versão mais recente
RUN python -m pip install --upgrade pip

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar todos os arquivos do diretório atual para o diretório /app no container
COPY . .

# Instalar dependências do sistema necessárias (caso precise de compilação de pacotes)
RUN apt-get update && apt-get install -y libpq-dev build-essential

# Instalar as dependências Python definidas no requirements.txt
RUN pip install -r requirements.txt

# Expor a porta onde o Flask vai rodar
EXPOSE 5000

# Rodar o aplicativo Flask
CMD ["python", "app.py"]
