class StepsController < ApplicationController
  respond_to    :html, :json

  def index
    @steps = Step.all
    respond_with(@steps)
  end

  def show
    # @course = Course.find(params[:course_id])
    # @step = @course.steps.build
    @step = get_step(params[:id]) 
    respond_with(@step)
  end
  
  def new
    # @step = Step.new(@course)
    # @course = Course.find(params[:course_id])
    # @step = @course.steps.build
  end

  def create
    # @step = Step.new(params[:course])
    # @course = Course.find(params[:course_id])
    # @step = @course.step.build(params[:step])
    # if @step.save
      # redirect_to(@step, :notice => 'Step added successfully!')
    # else
      # render :new
    # end
  end
  
  def edit
    # @step = get_course(params[:id]) 
  end
  
  def update
    # @step = get_course(params[:id]) 
    # if @step.update_attributes(params[:step])
      # redirect_to(@step, :notice => 'Step updated')
    # else
      # render :edit
    # end
  end

  def destroy
    # @step = get_step(params[:id])
    # if @step.destroy
      # redirect_to new_course_path
    # end
  end


  def get_step(step_id)
    Step.find(step_id)
  end
end
