# Simple axe docker

This is a simple implementation of the [axe-cli](https://github.com/dequelabs/axe-core-npm/blob/develop/packages/cli/README.md) project running inside docker.

## Installing

Simply run `docker-compose up` on the root of the repository.

## Running axe against an URL

Ssh into the container after you make sure it is running.

    docker exec -it axe-cli-axe-runner-1 bash

From there, call `axe` with the `--chrome-options="no-sandbox"` flag, passing your chosen url.

    axe https://mywebsite.net/blog/index.html --chrome-options="no-sandbox"

## Sources

- <https://github.com/dequelabs/axe-core-npm/issues/501#issuecomment-1163136188>
- <https://stackoverflow.com/a/47376491>
- <https://unix.stackexchange.com/a/590412>
- <https://www.ubuntuupdates.org/package/google_chrome/stable/main/base/google-chrome-stable?id=202706&page=2>
- <https://github.com/dequelabs/axe-core-npm/blob/develop/packages/cli/README.md>
- <https://www.npmjs.com/package/selenium-webdriver>
- <https://stackoverflow.com/a/39777387>
