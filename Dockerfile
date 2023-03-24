FROM selenium/standalone-firefox

ARG CHROME_VERSION="109.0.5414.119-1"

WORKDIR /code

RUN sudo apt-get upgrade && sudo apt-get update -y && sudo apt-get install nodejs npm -y
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
SHELL ["/bin/bash", "-c"]
RUN source ~/.nvm/nvm.sh && nvm install 16 -y && nvm use 16 && npm install @axe-core/cli -g
RUN npm install selenium-webdriver
RUN wget -q -O /code/chrome.deb https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}_amd64.deb && sudo apt-get install -y /code/chrome.deb

COPY . .

CMD ["tail", "-F", "anything"]
