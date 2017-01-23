class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @certificate = Certificate.find(@user.certificates_id)
    @type = Type.find(@user.types_id)
    @user_cat = UserCategory.where(user_id: @user)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Votre profil a ete completé"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(   :first_name,
                                    :last_name,
                                    :certificates_id,
                                    :types_id,
                                    {category_ids: []},
                                    :telephone,
                                    :address,
                                    :compagny_name,
                                    :hourly_rate,
                                    )
  end

  def set_user
    @user = User.find(params[:id])
  end
end