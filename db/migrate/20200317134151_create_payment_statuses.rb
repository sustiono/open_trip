class CreatePaymentStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_statuses do |t|
      t.string :name, null: false, default: 'Pending'
      t.string :status_code, null: false, default: '1'

      t.timestamps
    end
  end
end
