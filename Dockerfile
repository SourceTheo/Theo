FROM SourceTheo/Theo:slim-buster

RUN git clone https://github.com/SourceTheo/Theo.git /root/zira

WORKDIR /root/zelz

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zelz/bin:$PATH"

CMD ["python3","-m","zelz"]
