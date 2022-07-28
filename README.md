# EmailSender
## To start run:
 - `docker-compose up -d`
 - `mix deps.get`
 - `mix ecto.setup`
 - `mix phx.server`

### Routes
 - POST `/api/welcome-mail` body: `{email_to: ["emails"]}`
 
## It's necessary to export those variables with the correct information in order to the SMTP works:
  - `export SMTP_HOST=SMTP_HOST`
  - `export SMTP_PORT=SMTP_PORT`
  - `export SMTP_USERNAME=SMTP_USERNAME`
  - `export SMTP_PASSWORD=SMTP_PASSWORD`


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
