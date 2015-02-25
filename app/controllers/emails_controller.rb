class EmailsController < ApplicationController
  def create
    AuthMailer.email(
      email_params[:to],
      email_params[:subject],
      email_params[:body]
    ).deliver
  end

  private

  def email_params
    params.permit(:to, :subject, :body)
  end
end
