FROM codercom/code-server:latest

# ✅ Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# ✅ Install VS Code CLI for Remote Tunnels
RUN npm install -g @vscode/server

# ✅ Clone your GitHub project into the workspace (optional)
# RUN git clone https://github.com/your-username/your-repo.git /home/coder/project

# ✅ Set working directory
WORKDIR /home/coder/project

# ✅ Expose port
EXPOSE 8080
