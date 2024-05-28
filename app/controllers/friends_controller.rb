class FriendsController < ApplicationController
  before_action :set_friend, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /friends
  def index
    @friends = Friend.all
  end

  # GET /friends/1
  def show
  end

  # GET /friends/new
  def new
    #@friend = Friend.new
    @friend = current_user.friends.build
  end

  # GET /friends/1/edit
  def edit
  end

  # POST /friends
  def create
    #@friend = Friend.new(friend_params)
    @friend = current_user.friends.build(friend_params)
    if @friend.save
      redirect_to @friend, notice: "Friend was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  def update
    if @friend.update(friend_params)
      redirect_to @friend, notice: "Friend was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  def destroy
    @friend.destroy
    redirect_to friends_url, notice: "Friend was successfully destroyed.", status: :see_other
  end

  def correct_user
    @friend = current_user.friends.find_by(id: params[:id])
    redirect_to friends_path, notice: "Not Authorized To Edit This Friend" if @friend.nil?
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_params
      params.require(:friend).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
