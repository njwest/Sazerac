# Sazerac

A VueJS + Absinthe GraphQL + Elixir + Phoenix 1.3 web application.

## Table of Contents

- [File Structure](#file-structure)
- [Installation](#installation)
- [About](#about)
- [Elixir](#elixir)
- [Phoenix](#phoenix)
- [GraphQL](#graphql)
  - [Vue-Apollo](#vue-apollo)
  - [Absinthe](#absinthe)
  - [About GraphQL](#about-graphql)
- [Database Adapter](#database-adapter)
- [Bootstrap 4](#bootstrap-4)
- [SASS](#sass)

## File Structure

This repo contains an Elixir/Phoenix app that builds and manages a VueJS Node web app.

- The VueJS app lives in `assets/` inside the web app (Phoenix builds and manages the VueJS's node process(s)).
- Elixir app logic lives in `lib/`.
  - `lib/sazerac_web/` contains router/endpoint/controller/web code
  - `lib/sazerac/` contains business logic (DB, repo logic)
- Config lives in `config/`
- Root app file (sort of like Node's `package.json`) lives in `mix.exs`.

##### TODO: document how GraphQL schemas/resolvers/plugs work + where they live :dragon:

## Installation

1. Clone the repo
 Install dependencies with `mix deps.get`
2. Create and migrate database with `mix ecto.create && mix ecto.migrate`*
3. Install Node modules with `cd assets && yarn install` (or `cd assets && npm i` if you do not have **Yarn** installed).
4. Run with `mix phx.server` or `iex -S mix phx.server` (iex = Interactive Elixir CLI interface)
5. Visit http://localhost:4000/graphiql and explore the GraphiQL UI. (hit Docs and search for User schema).

##### * Note about dev DB user config:

Ecto can adapt to any database, but in this version of a VueJS GraphQL app, PostgreSQL has been implemented.

Before running this repo, make sure you have PostgreSQL installed with the following `SUPERUSER` user created (for local dev only, NOT production):

```
username: postgres
password: postgres
```

Dev database config is located in `config/dev.exs`.

## About

About this stack:

## Elixir

Elixir has the power of a functional language (Erlang OTP) with Ruby-esque syntactic eloquence.

Elixir also has a robust dev community with a wide array of powerful open-source packages (via Hex.pm), and Elixir engineers can directly access Erlang syntax + Erlang native modules from Elixir code. As a result, Elixir's package ecosystem is more mature and less crowded than Node's.

Elixir has the fastest websocket/pubsub capabilities of any language, and Elixir apps can take advantage of 100% of a server's hardware resources/CPU threads without extra configuration/hacking/service worker-managed clusters.

One example of Elixir's capabilities: you can run several Node servers on top of an Elixir server, have several databases running within the same container (as in a monolith), and still get microsecond render speeds from each frontend.

* [Install Elixir](https://elixir-lang.org/install.html)
  - [Windows](https://elixir-lang.org/install.html#windows)
  - [Mac](https://elixir-lang.org/install.html#mac-os-x)
  - [Unix](https://elixir-lang.org/install.html#unix-and-unix-like)
  - [Raspberry Pi](https://elixir-lang.org/install.html#raspberry-pi)
  - [Docker](https://elixir-lang.org/install.html#docker)
* [Official Elixir Lang Docs (En)](https://elixir-lang.org/)
* [Elixir Lang Guides (zh-hant)](https://elixirschool.com/zh-hant/)

## Phoenix

The Phoenix Framework is a powerful Elixir web server framework. Phoenix is to Elixir what Rails is to Ruby.

* [Install Phoenix](https://hexdocs.pm/phoenix/installation.html)
* [Official Phoenix Framework Website](http://www.phoenixframework.org/)

## GraphQL

### Vue-Apollo

The **VueJS** layer of this application uses [Vue-Apollo](https://github.com/Akryum/vue-apollo) to communicate with Absinthe GraphQL.

### Absinthe

Absinthe meets full specs and compliance with the latest GraphQL working paper.

* [Absinthe GraphQL Docs/Repo](https://github.com/absinthe-graphql/absinthe)
* [Latest GraphQL Release Specs](https://facebook.github.io/graphql/)

### About GraphQL

GraphQL is an API query language that can get many resources from different sources with a single request. When used properly, GraphQL can follow references between resources in addition to their properties.

GraphQL is great for building APIs that receive data from various sources and in inconsistent key-value formats. GraphQL that communicates with more than one database

For more information, visit [graphql.org.](https://graphql.org/)

Also, check out [GraphQL: Common Questions](https://www.howtographql.com/advanced/5-common-questions/) and [How to GraphQL](https://www.howtographql.com/).

## Database Adapter

Elixir's Ecto DB adapter package can be used with any database.

* [Ecto repo + Docs](https://github.com/elixir-ecto/ecto)

## Bootstrap 4

[Bootstrap 4 docs](https://getbootstrap.com/docs/4.1/getting-started/introduction/)

## SASS

[SASS docs](https://sass-lang.com/guide)

### A note about Phoenix 1.2 ~> 1.3

The update of Phoenix 1.2 to **Phoenix 1.3** involved directory structure changes and improvement of Phoenix CLI commands.

Some guides from 2016 to early 2017 may use outdated CLI commands (`mix phoenix.` rather than `mix phx.`) and different folder structure (src is consolidated into `app_root/lib` in 1.3), but not drastic differences in actual code.

If you search for guides, such as "deploying Phoenix with Kubernetes", look for guides/articles from late 2017 to 2018 for most up-to-date stuff (older articles/guides will likely still work).
