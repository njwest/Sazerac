# Sazerac

A VueJS-ready GraphQL API written in Elixir on Phoenix

## Getting Started

* Clone the repo
* Install dependencies with `mix deps.get`
* Create and migrate database with `mix ecto.create && mix ecto.migrate`
* Run with `iex -S mix phx.server` (starts server with Interactive Elixir (iex) interface)
* Visit http://localhost:4000/graphiql

## Learn about this stack

  * [Official Elixir Lang Docs (En)](https://elixir-lang.org/)
  * [Elixir Lang Guides (zh-hant)](https://elixirschool.com/zh-hant/)
  * [Official Phoenix Framework Website](http://www.phoenixframework.org/)
  * [Absinthe GraphQL Repo](https://github.com/absinthe-graphql/absinthe)

##### A note about Phoenix 1.2 ~> 1.3

The update of Phoenix 1.2 to **Phoenix 1.3** involved directory structure changes and improvement of Phoenix CLI commands.

Some guides from 2016 to early 2017 may use outdated CLI commands (`mix phoenix.` rather than `mix phx.`) and different folder structure (src is consolidated into `app_root/lib` in 1.3), but not drastic differences in actual code.

If you search for guides, such as "deploying Phoenix with Kubernetes", look for guides/articles from late 2017 to 2018 for most up-to-date stuff (older articles/guides will likely still work).
