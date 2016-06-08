class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:imie, :nazwisko, :email, :password)
  end

  def account_update_params
    params.require(:user).permit(:imie, :nazwisko, :email, :password)
  end
end