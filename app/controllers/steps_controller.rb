class StepsController < ApplicationController
  respond_to    :html, :json

  def index
    @steps = Step.all
    respond_with(@steps)
  end

  def show
    @step = get_step(params[:id]) 
    respond_with(@step)
  end
  
  def new
    @step = Step.new
  end

  def create
    @step = Step.new(params[:course])
    if @step.save
      redirect_to(@step, :notice => 'Step added successfully!')
    else
      render :new
    end
  end
  
  def edit
    @step = get_course(params[:id]) 
  end
  
  def update
    @step = get_course(params[:id]) 
    if @step.update_attributes(params[:step])
      redirect_to(@step, :notice => 'Step updated')
    else
      render :edit
    end
  end

  def destroy
    @step = get_step(params[:id])
    if @step.destroy
      redirect_to steps_path
    end
  end

  private

  def get_step(step_id)
    Step.find(step_id)
  end
end
