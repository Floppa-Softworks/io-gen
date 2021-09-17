
FROM gitpod/workspace-full:latest

RUN bash -c ". .nvm/nvm.sh     && nvm install 16.6.1    && nvm use 16.6.1    && nvm alias default 16.6.1"

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix

RUN bash -c "npm i -g npm ts-node typescript"