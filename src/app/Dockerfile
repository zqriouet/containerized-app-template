FROM python:3.11
WORKDIR /app
ADD ./requirements.txt /app/requirements.txt
RUN apt update && apt install -y curl && pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
EXPOSE $APP_PORT
CMD streamlit run app.py --server.port $APP_PORT