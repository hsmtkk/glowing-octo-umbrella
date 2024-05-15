FROM python:3.11
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN apt-get -y update && apt-get -y install libgl1-mesa-dev poppler-utils tesseract-ocr
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --install-extension ms-python.python --install-extension ms-python.black-formatter
