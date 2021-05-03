# CostoMall

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

To generates controller, views, and context for a JSON resource.
  
  * mix phx.gen.json {Context=Mall} {Module=Cart} {table=carts} {tableSchema=count:integer total:integer}

Utils.

  * gen.json: https://hexdocs.pm/phoenix/Mix.Tasks.Phx.Gen.Json.html
  * Routing https://hexdocs.pm/phoenix/routing.html

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
