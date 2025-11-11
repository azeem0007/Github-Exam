# 1️⃣ Use an official Python base image
FROM python:3.11-slim

# 2️⃣ Set the working directory inside the container
WORKDIR /app

# 3️⃣ Copy only requirements first (for better caching)
COPY requirements.txt .

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy all source files (after installing deps)
COPY . .

# 6️⃣ Specify how to start the app
CMD ["python", "app.py"]
