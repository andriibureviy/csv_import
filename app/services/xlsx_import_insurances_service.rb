class XlsxImportInsurancesService
  require 'rubyXL'
  def call(file, path)
  #   file = File.save(file)
  #   File.makedirs("../public/report")
  #   File.open("../public/report/waiting.adc", "w") { |
  #   file|
  #     file.write(“hello world”) }
  # end
  workbook = RubyXL::Parser.parse(path)
  binding.b
  # workbook[0]
  worksheet = workbook[0]
  size_of_worksheet = worksheet[0].size
  worksheet[0].map{|x| p x.value  }

  worksheet[0]

  p workbook
    # csv = CSV.parse(file, headers: true, col_sep: ';')
    # csv.each do |row|
    #   p row.to_h
    #   # binding.b
    #   insurance_hash = {}
    #   #   t.string :kind_of_insurance
    #   #       t.string :insecrower
    #   #       t.string :car
    #   #       t.decimal :insurance_premium
    #   #       t.decimal :paid
    #   #       t.string :franchise
    #   #       t.string :tariff
    #   #       t.datetime :term_of_the_contract
    #   #       t.string :credit
    #   #       t.text :description
    #   #       t.decimal :sum_insured
    #   #       t.datetime :date
    #   insurance_hash[:kind_of_insurance] = row['Вид страхування']
    #   insurance_hash[:date] = row['дата поліса']
    #   insurance_hash[:insecrower] = row['Страхувальник']
    #   insurance_hash[:car] = row['Автомобіль']
    #   insurance_hash[:sum_insured] = row['Страхова сума']
    #   insurance_hash[:insurance_premium] = row['Страхова премія']
    #   insurance_hash[:paid] = row['оплачено']
    #   insurance_hash[:franchise] = row['Франшиза']
    #   insurance_hash[:tariff] = row['Тариф']
    #   insurance_hash[:term_of_the_contract] = row['Термін дії договору']
    #   insurance_hash[:description] = row['nil']
    #   insurance_hash[:credit] = row['Кредит']
    #
    #   Insurance.find_or_create_by!(insurance_hash)
    #   #
    #   # p row
    # end
  end
end
