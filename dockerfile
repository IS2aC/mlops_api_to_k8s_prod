# Étape 1 : choisir une image Python légère
FROM python:3.12-slim

# Étape 2 : définir le dossier de travail
WORKDIR /api

# Étape 3 : copier les fichiers nécessaires
COPY requirements.txt .

# Étape 4 : installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : copier le code source
COPY ./api ./api

# Étape 6 : exposer le port de l’application
EXPOSE 8000

# Étape 7 : lancer l’application FastAPI avec Uvicorn
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8000"]
