FROM elixir:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR /app
ADD . /app
