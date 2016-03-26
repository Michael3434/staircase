class UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.all
    @user = User.new
  end

  def new
  end

  def create
    @user = User.new(user_params)
    @user.password = Faker::Internet.password
    if @user.valid?
      send_notifications
      @user.save!
      redirect_to :back, notice: "Utilisateur dans la boite !"
    else
      redirect_to :back, notice: "Erreur d'ajout #{@user.errors.messages}"
    end

  end

  private

  def authenticate_admin!
    authenticate_user!
    if !current_user.is_admin?
      redirect_to root_url
      return
    end
  end

  def send_notifications
    SmsSender.new(welcome_content, @user.phone_number).send
    UserMailer.welcome(@user).deliver_now
  end

  def welcome_content
    "Bonjour #{@user.first_name}. Nous sommes très heureux de vous accueillir dans la communauté Staircaze de votre immeuble du 12, rue Jean Richepin. Pour vous connecter, vous pouvez utiliser l’identifiant : #{@user.email} et votre mot de passe : #{@user.password}. Vos données resteront strictement confidentielles. Seule la gardienne (Mme Mathias) peut vous envoyer des informations relatives à la vie de l’immeuble. L’équipe Staircaze."
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :user_floor, :apt_reference, :receive_sms, :receive_email)
  end
end
