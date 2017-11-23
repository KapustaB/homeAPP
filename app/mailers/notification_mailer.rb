class NotificationMailer < ApplicationMailer
  default from: 'Megatrend VCC NO REPLY <vcc@ccweb.megatrend.com>'

  def invite_message(user, from, subject, content)
    @user = user
    @token = user.raw_invitation_token
    @resource = content
    @invitation_link = accept_user_invitation_url(@resource, :invitation_token => @token)
    mail(:from => from, :bcc => from, :to => @user.email, :subject => subject)
  end

  def existing_user_invite_message(user, from, subject, content)
    @user = user
    mail(:from => from, :bcc => from, :to => @user.email, :subject => "Dodani ste u kuću!", template_name: 'existing_user')
  end
end
