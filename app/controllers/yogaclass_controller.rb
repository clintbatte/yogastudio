class YogaclassController < ApplicationController
  def index
    @yogaclass = Yogaclass.all
  end
end
