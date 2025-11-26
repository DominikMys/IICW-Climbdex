FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# For example, your WSGI callable is frontend_app:wsgi_app
CMD ["waitress-serve", "--port=8000", "wsgi:app"]