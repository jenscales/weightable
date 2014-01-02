class WeighinsController < ApplicationController

def show
  @weighin = Weighin.new
end

# def show
#   @weighin = Weighin.find(params[:id])
# end

def new
  @weighin = Weighin.new
end

def create
  @weighin = current_user.weighins.build(weighin_params)
  if @weighin.save
    redirect_to user_path(current_user.id), :notice => "Your post saved"
  else
    redirect_to root_path, :notice => "Your post didn't save"
  end
end

# def edit
# end

# def destroy
# end
  
  private 

  def weighin_params
    params.require(:weighin).permit(:todays_weight, :weigh_image, :comments, :user_id)
  end


end