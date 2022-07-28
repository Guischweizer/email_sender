defmodule EmailSender do
  import Bamboo.Email

  def welcome_email(emailTo) do
    new_email()
    |> to(emailTo)
    |> from(System.get_env("SMTP_USERNAME"))
    |> subject("Bem vindo ao app!")
    |> html_body(EEx.eval_file("priv/static/test.html.eex", []))
    |> EmailSender.Mailer.deliver_now()
  end
end
