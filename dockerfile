FROM nginx:latest AS base
RUN rm -rf /usr/share/nginx/html/*
COPY Brick_Breaker_Game/ /usr/share/nginx/html/
EXPOSE 80

FROM base AS final
CMD ["nginx", "-g", "daemon off;"]
