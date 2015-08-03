class CreateQrCodes < ActiveRecord::Migration
  def change
    create_table :qr_codes do |t|
      t.string :ip_address
      t.string :url

      t.timestamps null: false
    end
  end
end
