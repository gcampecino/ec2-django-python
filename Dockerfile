FROM python:3.10 
WORKDIR /app
COPY requirements.txt .
RUN python3.10 -m venv env
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]