# frozen_string_literal: true

class SubscriptionsController < ApplicationController
  before_action :set_lead, only: [:success]

  def index
    @lead = Lead.new
  end

  def success
    render 'success'
  end

  private

  def set_lead
    @lead = Lead.find_by!(token: params[:token])
  end
end