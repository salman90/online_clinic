class CheckupsController < ApplicationController
  before_action :find_checkup, only: [:show, :edit, :update, :destroy]
  def new
     @checkup = Checkup.new
  end

  def create
    @checkup = Checkup.new(checkup_params)
    @checkup.user = current_user
    if @checkup.save
      redirect_to checkup_path(@checkup), notice: 'checkup was created successfully'
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.new
  end


  def index
    @checkups = Checkup.all
  end

  def edit
  end

  def update
    if @checkup =  Checkup.update(checkup_params)
      redirect_to checkup_path(@checkup), notice: 'updated checkup successfully'
    else
      render 'edit'
    end
  end

  def destroy
    @checkup = Checkup.destroy(params[:id])
    redirect_to checkups_path
  end

  private
   def checkup_params
     params.require(:checkup).permit(
       :first_name,
       :middle_name ,
       :last_name,
       :age,
       :file_number,
       :weight_before_surgery,
       :height,
       :body_mass_before_surgery,
       :classification_of_body_mass,
       :perfect_weight,
       :extra_weight,
       :type_of_surgery,
       :associated_diseases,
       :change_in_associated_diseases,
       :current_weight,
       :percentage_of_lost_weight,
       :duration_of_surgery,
       :sex,
       :married,
       :children,
       :work,
       :pregnancy,
       :use_of_vitamins,
       :forgetfulness,
       :anxiety,
       :skin,
       :nails,
       :hair_loss,
       :sagging,
       :cosmetic_surgery,
       :nausea,
       :resurrection,
       :dizziness,
       :Cholecystectomy,
       :reproduction_after_operation,
       :regrets_the_surgery,
       :recommended,
       :notes,
       :blood_pressure_before_surgery,
       :blood_pressure_after_surgery,
       :diabetes_before_surgery,
       :diabetes_after_surgery,
       :arthritis_before_surgery,
       :arthritis_after_surgery,
       :sleep_apnea_before_surgery,
       :sleep_apnea_after_surgery,
       :asthma_before_surgery,
       :asthma_after_surgery,
       :thyroid_disorders_before_surgery,
       :thyroid_disorders_after_surgery,
       :increase_in_body_fat_before_surgery,
       :increase_in_body_fat_after_surgery,
       :psychological_disorders_before_surgery,
       :psychological_disorders_after_surgery,
       :lack_of_fertility_before_surgery,
       :lack_of_fertility_after_surgery,
       :varicose_inferior_varicose_veins_before_surgery,
       :varicose_inferior_varicose_veins_after_surgery,
       :incontinence_before_surgery,
       :incontinence_after_surgery,
       :menstruation_before_surgery,
       :menstruation_after_surgery,
       :polycystic_ovaries_before_surgery,
       :polycystic_ovaries_after_surgery,
       :smoking_before_surgery,
       :smoking_after_surgery,
       :disturbances_before_surgery,
       :disturbances_after_surgery,
       :image
     )
   end

   def find_checkup
     @checkup = Checkup.find(params[:id])
   end

end
