# frozen_string_literal: true

class LeadsController < ApplicationController
  def create
    lead = Lead.find_or_initialize_by(lead_params)

    if lead.save
      flash[:notice] = 'Inscrição realizada com sucesso.'
      redirect_to subscriptions_success_lead_path(lead.token)
    else
      flash[:notice] = 'Falha ao realizar inscrição, tente novamente.'
      redirect_to subscriptions_path
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:email)
  end
end