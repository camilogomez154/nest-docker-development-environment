FROM node:14-alpine AS development

ARG APP_NAME
ENV APPNAME $APP_NAME

WORKDIR /opt/project/

COPY ./apps/$APP_NAME ./apps/$APP_NAME
COPY ./*.json ./
COPY ./*.sh ./

RUN npm i -g @nestjs/cli
RUN yarn

CMD ["sh", "./start-dev.sh"]