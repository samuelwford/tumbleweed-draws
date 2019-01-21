class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all.order(:name)
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
    @drawings = Drawing.tagged_with(@tag.name)
  end
end