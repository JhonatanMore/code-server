FROM codercom/code-server:latest

EXPOSE 8080

ENV PASSWORD=${PASSWORD}

CMD ["code-server"]

RUN git clone https://github.com/JhonatanMore/my-project.git /home/coder/project

WORKDIR /home/coder/project


