class Users::InvitationsController < Devise::InvitationsController
  def create
    @from    = params[:from]
    @subject = params[:invite_subject]
    @content = user_params[:house_ids]
    @user = User.find_by(email: user_params[:email])
    @user = User.invite!(user_params.except(:house_ids), current_user) unless @user.present?
    UserHouse.create({user_id: @user.id, house_id: @content})

    if @user.present?
      @user.skip_invitation = true
      NotificationMailer.existing_user_invite_message(@user, @from, @subject, @content).deliver_now
    else
      NotificationMailer.invite_message(@user, @from, @subject, @content).deliver
      @user.invitation_sent_at = Time.now.utc # mark invitation as delivered
    end

    if @user.errors.empty?
      flash[:notice] = "successfully sent invite to #{@user.email}"
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @house_id = params[:house_id]
    super
  end

  private

  def user_params
    params.require(:user).permit(:email, :house_ids)
  end
end
