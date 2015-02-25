class AuthMailer < ActionMailer::Base
  default from: "coding_challenge_1@appacademy.io"

  def email(to, subject, body)
    @body = body
    mail(
      to: to,
      subject: subject
    )
  end

end
