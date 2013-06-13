class TemplateMailer < ActionMailer::Base
  default from: "ajcubeta@gmail.com"

  def welcome_email(user)
    @user = user
    template = Template.find(1)
    @body = template.replace_body_attributes(@user).html_safe

    @url  = "http://example.com/login"

    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end