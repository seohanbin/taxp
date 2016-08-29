class RegistrationsController < Devise::RegistrationsController

  def create

    
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :email, 
      :password, 
      :password_confirmation,
      
      :name,
      :nickname,
      :birth,

      :personage,
      :studentid,
      :gender,
      :univmajor,
      :introduce, 
      :taxicourse

      )
  end

  def account_update_params
    params.require(:user).permit(
      :email, 
      :password, 
      :password_confirmation, 
      :current_password,

      :nickname,

      :personage,
      :studentid,
      :gender,
      :univmajor,
      :introduce, 
      :taxicourse
      )
  end
end




