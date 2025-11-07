# Étape 1 : choisir une image Python légère
FROM python:3.11-slim

# Étape 2 : définir le répertoire de travail
WORKDIR /app

# Étape 3 : copier les fichiers nécessaires
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4 : copier tout le reste du projet
COPY . .

# Étape 5 : exposer le port
EXPOSE 8000

# Étape 6 : lancer le serveur FastAPI
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8000"]
