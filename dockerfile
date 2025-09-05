# Usar a imagem oficial do Python como base
FROM python:3.13.1-slim

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar os arquivos de código para o container
COPY . .

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta onde o Flask vai rodar
EXPOSE 5000

# Rodar o aplicativo Flask
CMD ["python", "app.py"]
