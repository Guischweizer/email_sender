defmodule EmailSenderWeb.PageController do
  use EmailSenderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def send_email(conn, %{"email_to" => email_to}) do
    EmailSender.welcome_email(email_to)

    conn
    |> put_status(:ok)
    |> render("index.html")
  end
end
