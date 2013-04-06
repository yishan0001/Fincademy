class CoursesController < ApplicationController
  respond_to    :html, :json
  
  def index
    @courses = Course.all
    respond_with(@courses)
    
  end

  def show
    @course = get_course(params[:id]) 
  end
  
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      # courseMailer.signup_confirmation(@course).deliver
      redirect_to(@course, :notice => 'Course added successfully!')
    else
      render :new
    end
  end
  
  def edit
    @course = get_course(params[:id]) 
  end
  
  def update
    @course = get_course(params[:id]) 
    if @course.update_attributes(params[:course])
      # sign_in @course, :bypass => true
      redirect_to(@course, :notice => 'Course updated')
    else
      render :edit
    end
  end

  def destroy
    @course = get_course(params[:id])
    if @course.destroy
      redirect_to courses_path
    end
  end 

  def excel
    
  end

  private

  def get_course(course_id)
    Course.find(course_id)
  end
end
