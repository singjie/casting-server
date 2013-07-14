class UserVideosController < ApplicationController
  # GET /user_videos
  # GET /user_videos.json
  def index
    @user_videos = UserVideo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_videos }
    end
  end

  # GET /user_videos/1
  # GET /user_videos/1.json
  def show
    @user_video = UserVideo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_video }
    end
  end

  # GET /user_videos/new
  # GET /user_videos/new.json
  def new
    @user_video = UserVideo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_video }
    end
  end

  # GET /user_videos/1/edit
  def edit
    @user_video = UserVideo.find(params[:id])
  end

  # POST /user_videos
  # POST /user_videos.json
  def create
    @user_video = UserVideo.new(params[:user_video])

    respond_to do |format|
      if @user_video.save
        format.html { redirect_to @user_video, notice: 'User video was successfully created.' }
        format.json { render json: @user_video, status: :created, location: @user_video }
      else
        format.html { render action: "new" }
        format.json { render json: @user_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_videos/1
  # PUT /user_videos/1.json
  def update
    @user_video = UserVideo.find(params[:id])

    respond_to do |format|
      if @user_video.update_attributes(params[:user_video])
        format.html { redirect_to @user_video, notice: 'User video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_videos/1
  # DELETE /user_videos/1.json
  def destroy
    @user_video = UserVideo.find(params[:id])
    @user_video.destroy

    respond_to do |format|
      format.html { redirect_to user_videos_url }
      format.json { head :no_content }
    end
  end
  
  def user_video_create
    user_video = UserVideo.new
    user_video.video = params[:user_video]
    user_video.save!
    puts user_video.video.url(:original)
    render :json => user_video.as_json(:only => :id)
  end
end
