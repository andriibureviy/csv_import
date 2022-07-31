class CreateInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :insurances do |t|
      t.string :kind_of_insurance
      t.string :insecrower
      t.string :car
      t.decimal :insurance_premium
      t.decimal :paid
      t.string :franchise
      t.string :tariff
      t.datetime :term_of_the_contract
      t.string :credit
      t.text :description
      t.decimal :sum_insured
      t.datetime :date

      t.timestamps
    end
  end
end
