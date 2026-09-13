# Use an official Python runtime
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency files first
COPY requirements.txt .

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Copy everything else
COPY . .

# Expose common Python app ports (adjust if your app uses 5000 or 8080)
EXPOSE 8000

# Run the app (assumes main.py or app.py exists)
CMD ["python", "main.py"]
