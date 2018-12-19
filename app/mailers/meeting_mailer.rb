class MeetingMailer < ApplicationMailer
  helper :application
  default from: "nelmansena@gmail.com"

  def meeting_scheduled
    @meeting = params[:meeting]
    @user = params[:user]

    mail(to: @user.email, subject: "New Meeting Confirmation")
  end

end
