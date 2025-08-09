# ✅ Use the official code-server image
FROM codercom/code-server:latest

# ✅ Expose port 8080 for web access
EXPOSE 8080

# ✅ Set the password for code-server login (you can define this in Render's environment settings)
ENV PASSWORD=${PASSWORD}

# ✅ Install VS Code CLI for Remote Tunnels
RUN npm install -g @vscode/server

# ✅ Clone your GitHub project into the workspace
RUN git clone https://github.com/JhonatanMore/my-project.git /home/coder/project

# ✅ Set the working directory to your project folder
WORKDIR /home/coder/project

# ✅ Start code-server when the container runs
CMD ["code-server"]

