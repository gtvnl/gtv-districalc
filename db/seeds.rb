require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ntb = "Nader te bepalen"
color = Color.upsert!(name: ntb, description: ntb, hex: "#fff")
ip_value = IpValue.upsert!(name: ntb, description: ntb)


csv_text = File.read('db/import/RAL_COLORS.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Color.upsert!(name: row['ral'], description: row['description'], hex: row['hex'])
end

standaard = Fabrikaat.upsert!(name: ntb)
systeem = Systeem.upsert!(fabrikaat: standaard, name: ntb, klass: ntb, has_door: false, color: color, ip_value: ip_value)

Fabrikaat.upsert!(name: "ABB")
Fabrikaat.upsert!(name: "Eaton")
Fabrikaat.upsert!(name: "Hager")
Fabrikaat.upsert!(name: "Legrand")
Fabrikaat.upsert!(name: "Siemens")

Preference.create(setting: "Uurloon", value: 40.0)
Preference.create(setting: "Winstpercentage", value: 15.0)
