FROM nginx

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN usermod -u ${USER_ID} -o nginx && \
    groupmod -g ${GROUP_ID} -o nginx
