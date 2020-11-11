FROM node:12.14.1

# COPY . /app
# WORKDIR /app

# RUN yarn install
# # RUN yarn run build

# EXPOSE 9000

# CMD BUILD_ENV=docker yarn run dev
ENV APP_ROOT /src
ENV DEVELOPMODE 是開發者模式   

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

RUN npm ci
RUN npm run build

ENV HOST 0.0.0.0
