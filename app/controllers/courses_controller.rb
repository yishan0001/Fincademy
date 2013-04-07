class CoursesController < ApplicationController
  # respond_to    :html, :json

  def index
    @courses = Course.all

    respond_to do |format|
      format.html
      format.json { render :json => @courses }
    end
  end

  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.json { 
        render :json => @course.to_json(:include => :steps) 
      }
    end

  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, notice: "Successfully created Course."
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to @course, notice: "Successfully updated course."
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_url, notice: "Successfully destroyed course."
  end
end
