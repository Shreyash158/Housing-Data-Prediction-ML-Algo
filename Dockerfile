from python:3.7
copy . /app
workdir /app
run pip install -r requirements.txt
expose $PORT
cmd gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app