# frozen_string_literal: true

# using controller to add :username to controller
class UsersController < Clearance::UsersController
  private

  def user_params
    params.require(:user).permit(:username)
  end
end
