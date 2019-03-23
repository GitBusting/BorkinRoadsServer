class UsersController < ApplicationController
  skip_before_action :authenticate_request#, only: %i[login register]

  # GET /users
  # GET /users.json
    def index
      @users = User.all
    end
  # GET /users/1
  # GET /users/1.json
    def show
      set_user
    end


   # POST /register
    def register
      @user = User.create(user_params)
     if @user.save
      response = { message: 'User created successfully'}
      render json: response, status: :created 
     else
      render json: @user.errors, status: :bad
     end 
    end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    @user = User.find(params[:id])
    @user.friend_ids = params[:friend_ids]
    @user.save
  end

    def login
      authenticate params[:email], params[:password]
    end
    def test
      render json: {
            message: 'You have passed authentication and authorization test'
          }
    end
  
    private

    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.permit(
        :name,
        :email,
        :password,
        :friend_ids
      )
    end

    def authenticate(email, password)
      command = AuthenticateUser.call(email, password)
  
      if command.success?
        render json: {
          access_token: command.result,
          message: 'Login Successful'
        }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
     end  
end