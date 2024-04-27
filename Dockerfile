FROM --platform=linux/amd64 python:3.10.6

# Install app
COPY . /usr/app
WORKDIR /usr/app

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Run Battlesnake
CMD [ "python", "main.py" ]
