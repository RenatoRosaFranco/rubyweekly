# frozen_string_literal: true

class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string   :email

      t.timestamps
    end
  end
end
