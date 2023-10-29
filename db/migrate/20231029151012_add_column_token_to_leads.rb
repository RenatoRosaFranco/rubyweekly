# frozen_string_literal: true

class AddColumnTokenToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :token, :string
  end
end
