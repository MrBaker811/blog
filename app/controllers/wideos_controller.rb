class WideosController < ApplicationController
  
def new
  @wideo = Wideo.new
end

 def index
  @wideos = Wideo.order('created_at DESC')
end

def create
  @wideo = Wideo.new(wideo_params)
  if @wideo.save
    flash[:success] = 'Video added!'
    redirect_to root_url
  else
    render 'new'
  end
end

def destroy
  @wideo = Wideo.find(params[:id])
  @wideo.destroy
 
  redirect_to wideos_path
end


private

def wideo_params
params.require(:wideo).permit(:link)
end

end