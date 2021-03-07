class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page], per_page: 12)

    respond_to do |format|
      format.html
      format.csv { send_data User.all.to_csv, filename: "exported-users.csv" }
    end
  end
end
