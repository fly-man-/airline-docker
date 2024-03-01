FROM openjdk:16.0-jdk-slim-bullseye
RUN apt update
RUN apt upgrade -y
RUN apt install git -y
RUN git clone https://github.com/patsonluk/airline.git
COPY backend.sh /airline
RUN chmod +x /airline/backend.sh
COPY frontend.sh /airline
RUN chmod +x /airline/frontend.sh
RUN cd airline
WORKDIR airline
RUN cd airline-data
WORKDIR airline-data
RUN ./activator publishLocal