# Imagem base do Python
FROM python:3.10-slim

# Diretório de trabalho no container
WORKDIR /app

# Copiar arquivos para dentro do container
COPY . .

# Instalar dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta do Flask
EXPOSE 5000

# Comando para rodar o app
CMD ["flask", "run", "--host=0.0.0.0"]