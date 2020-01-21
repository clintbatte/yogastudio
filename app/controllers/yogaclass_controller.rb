class YogaclassController < ApplicationController
  def index
    @yogaclass = Yogaclass.all
  end

  def new
    @yogaclass = Yogaclass.new
  end

  def create
    Yogaclass.create(yogaclass_params)
    redirect_to root_path
  end

  def show
    @yogaclass = Yogaclass.find(params[:id])
    @comment = Comment.new
  end

  private

  def yogaclass_params
    params.require(:yogaclass).permit(:name, :description, :time, :teacher)
  end
end
