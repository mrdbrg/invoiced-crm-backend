class V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])

    if user && user.valid_password?(params[:password])
      render json: user, status: :created
      # render json: user.as_json(only: [:id, :email]), status: :created
    else
      heade(:unauthorized)
    end
  end

  def destroy

  end

end