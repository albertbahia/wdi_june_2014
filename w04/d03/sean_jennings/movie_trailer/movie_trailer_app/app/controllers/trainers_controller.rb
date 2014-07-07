class TrainersController <ApplicationController

  def index
    @trainer = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      redirect_to trainer_path(@trainer)
    else
      redirect_to new_trainer_path
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end
  
  def update
    @trainer = Trainer.find(params[:id])
    if trainer.update(trainer_params)
      redirect_to trainer_path(@trainer)
    else
      redirect_to edit_trainer_path(@trainer)
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy
    redirect_to trainers_path
  end

  private

  def trainer_params
    params.require(:trainer).permit(:title, :emded_url)
  end
end
