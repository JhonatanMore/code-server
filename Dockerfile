FROM codercom/code-server:latest

# Switch to root to install packages
USER root

# ✅ Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs

# Switch back to default user (usually 'coder')
USER coder

# Set environment variable for password
ENV PASSWORD=${PASSWORD}

# Clone your GitHub project
RUN git clone https://github.com/JhonatanMore/my-project.git /home/coder/project

# Set working directory
WORKDIR /home/coder/project

# Expose port for Render
EXPOSE 8080

# Start code-server
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "/home/coder/project"]
