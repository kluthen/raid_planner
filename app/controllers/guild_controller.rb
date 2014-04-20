class GuildController < ApplicationController
  before_action :set_user, only: [:promote_user, :demote_user, :remove_user]
  
  before_action :is_admin?, except: [:index]

  def index
  	@events = Event.recent
  	@announcements = Announcement.recent
  end

  def about
  	@users = User.all
  end

  def promote_user
    @users = User.all
  	if @user.nil?
  		render about_path, alert: "Utilisateur inconnu"
  	else
  		@user.is_admin = true
  		@user.save
  		render about_path, notice: "Promotion effectuée"
  	end
  end

  def demote_user
    @users = User.all
  	if @user.nil?
  		render about_path, alert: "Utilisateur inconnu"
  	else
  		@user.is_admin = false
  		@user.save
  		render about_path, notice: "Démotion effectuée"
  	end
  end

  def remove_user
    @users = User.all
  	if @user.nil?
  		render about_path, alert: "Utilisateur inconnu"
  	else
  		@user.destroy
  		render about_path, notice: "Utilisateur supprimer"
  	end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      	@user = User.find(params[:uid])
    end
end
