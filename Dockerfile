FROM elixir:1.8.2-alpine

COPY mix.exs mix.lock /app/
COPY config/ /app/config

WORKDIR /app

RUN apk add --no-cache build-base && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get

COPY . /app

RUN mix compile.phoenix

EXPOSE 80

CMD ["mix","phx.server"]
