FROM python:3.13-slim
WORKDIR /app
COPY app/requirements.txt .
COPY app/app.py .
RUN python -m pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "-u", "app.py"]
