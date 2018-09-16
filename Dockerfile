FROM node:8.12.0-alpine

LABEL maintainer="Leo <leonidms@gmail.com>"

EXPOSE 3000
ENV NPM_CONFIG_LOGLEVEL info

WORKDIR /app
COPY . /app
RUN chmod +x ./bin/slackin
RUN yarn

CMD ./bin/slackin \
  ${SLACK_SUBDOMAIN} \
  ${SLACK_API_TOKEN} \
  ${GOOGLE_CAPTCHA_SECRET} \
  ${GOOGLE_CAPTCHA_SITEKEY}

