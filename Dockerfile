# Use an official lightweight Python image
FROM python:3.9-slim

# Container work directory
WORKDIR /app

# Copy everything
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Start the app
CMD ["python", "app.py"]
