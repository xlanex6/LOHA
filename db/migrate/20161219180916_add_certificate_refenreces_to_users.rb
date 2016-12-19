class AddCertificateRefenrecesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :certificates, foreign_key: true
  end
end
