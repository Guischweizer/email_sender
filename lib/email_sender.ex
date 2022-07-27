defmodule EmailSender do
  import Bamboo.Email

  def welcome_email(emailTo) do
    IO.inspect("PASSEI AQUI")

    new_email()
    |> to(emailTo)
    |> from("support@myapp.com")
    |> subject("Welcome to the app.")
    |> html_body("<strong>Thanks for joining!</strong>")
    |> text_body("Thanks for joining!")
    |> EmailSender.Mailer.deliver_now()
  end
end
