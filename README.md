# Sazerac

A VueJS + GraphQL + Elixir + Phoenix 1.3 web application.

## Running this API

* Clone the repo
* Install dependencies with `mix deps.get`
* Create and migrate database with `mix ecto.create && mix ecto.migrate`
* Run with `mix phx.server` or `iex -S mix phx.server` (iex = Interactive Elixir CLI interface)
* Visit http://localhost:4000/graphiql and explore the GraphiQL UI. (hit Docs and search for User schema).

## Learn about this stack

#### Elixir

Fastest websocket/pubsub capabilities on the web.

The power of a functional language with Ruby-esque syntax simplicity.

* [Install Elixir](https://elixir-lang.org/install.html)
  - [Windows](https://elixir-lang.org/install.html#windows)
  - [Mac](https://elixir-lang.org/install.html#mac-os-x)
  - [Unix](https://elixir-lang.org/install.html#unix-and-unix-like)
  - [Raspberry Pi](https://elixir-lang.org/install.html#raspberry-pi)
  - [Docker](https://elixir-lang.org/install.html#docker)
* [Official Elixir Lang Docs (En)](https://elixir-lang.org/)
* [Elixir Lang Guides (zh-hant)](https://elixirschool.com/zh-hant/)

#### Phoenix

* [Install Phoenix](https://hexdocs.pm/phoenix/installation.html)
* [Official Phoenix Framework Website](http://www.phoenixframework.org/)

#### GraphQL Package

Absinthe meets full specs and compliance with the latest GraphQL working paper.

* [Absinthe GraphQL Repo](https://github.com/absinthe-graphql/absinthe)

#### Database Adapter
* [Ecto](https://github.com/elixir-ecto/ecto)

##### A note about Phoenix 1.2 ~> 1.3

The update of Phoenix 1.2 to **Phoenix 1.3** involved directory structure changes and improvement of Phoenix CLI commands.

Some guides from 2016 to early 2017 may use outdated CLI commands (`mix phoenix.` rather than `mix phx.`) and different folder structure (src is consolidated into `app_root/lib` in 1.3), but not drastic differences in actual code.

If you search for guides, such as "deploying Phoenix with Kubernetes", look for guides/articles from late 2017 to 2018 for most up-to-date stuff (older articles/guides will likely still work).
