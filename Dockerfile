FROM python:3.7.1

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# RUN git clone https://github.com/Rapptz/discord.py
# RUN cd discord.py ; git checkout a4d1599 ; pip install -U .[voice]
# RUN pip install git+git://github.com/Rapptz/discord.py.git@a4d1599ce92e39d93ff6ccb08ef4511d8b2543be

COPY src/** ./src/

CMD [ "python", "./src/main.py" ]