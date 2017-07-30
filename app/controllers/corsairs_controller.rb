class CorsairsController < ApplicationController
  def new
    @corsair = Corsair.new
  end

  def show
    @corsair = Corsair.find(params[:id])
  end

  def create
    @corsair = Corsair.new(corsair_params)
    if @corsair.save
      flash[:success] = "Votre compte à été enregistré avec success"
      redirect_to @corsair
    else
      render 'new'
    end
  end

  def edit
    @corsair = Corsair.find(params[:id])
  end

  private

    def corsair_params
      params.require(:corsair).permit(:first_name, :age)
end
end
