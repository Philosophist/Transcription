FROM ubuntu
RUN apt update
RUN apt upgrade -y
RUN apt install build-essential python3 python3-pip wget git unzip -y
RUN pip3 install vosk ffmpeg
RUN git clone https://github.com/alphacep/vosk-api 
RUN cd vosk-api/python/example 
RUN wget https://alphacephei.com/vosk/models/vosk-model-en-us-0.22.zip
RUN unzip vosk-model-en-us-0.22.zip
RUN mv vosk-model-en-us-0.22 model
RUN apt install ffmpeg -y