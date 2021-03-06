class FlowersController < ApplicationController
  def index
    @flowers = Flower.all.order(created_at: :desc)
  end

  def create

    @flower = Flower.new(flower_params)

    respond_to do |format|
      if @flower.save
        format.html {redirect_to flowers_path}
      else
        format.js {}
      end

    end

  end

  private
  def set_flower
    @flower = Flower.find(params[:id])
  end

  def flower_params
    params.require(:flower).permit(:sepal_length,:sepal_width,:petal_length,:petal_width)
  end
end
