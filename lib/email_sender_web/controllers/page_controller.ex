defmodule EmailSenderWeb.PageController do
  use EmailSenderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def send_email(conn, _params) do
    EmailSender.welcome_email("umemail")

    conn
    |> put_status(:ok)
    |> render("index.html")
  end
end
