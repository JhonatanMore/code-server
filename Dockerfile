FROM codercom/code-server:latest

EXPOSE 8080

ENV PASSWORD=${PASSWORD}

CMD ["code-server"]

