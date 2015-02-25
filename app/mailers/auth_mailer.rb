class AuthMailer < ActionMailer::Base
  default from: "noreply@example.com"

  def email(to, subject, body)
    @body = body
    mail(
      to: to,
      subject: subject
    )
  end

end
