class SignupsController < ApplicationController

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
 
 
  def create
      camper = Signup.create!(signup_params)
      render json: camper.activity, status: :created
  end


  private

  def signup_params
      params.permit(:activity_id, :camper_id, :time)
  end

  def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end

