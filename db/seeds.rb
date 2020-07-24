# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.reset_pk_sequence
Budget.destroy_all
Budget.reset_pk_sequence
Income.destroy_all
Income.reset_pk_sequence
Expense.destroy_all
Expense.reset_pk_sequence

u1 = User.create(name: "Anmol", username: "anna", password: '123')
u2 = User.create(name: "Pam", username: "pammy", password: '1234')

b1 = Budget.create(user_id: u1.id, value: 500)
b2 = Budget.create(user_id: u2.id, value: 400)

i1 = Income.create(user_id: u1.id, name: "SWE job", value: 1000)
i2 = Income.create(user_id: u2.id, name: "Teaching job", value: 800)

e1 = Expense.create(user_id: u1.id, name: "Groceries", value: 300)
e2 = Expense.create(user_id: u2.id, name: "Fuel", value: 400)
e3 = Expense.create(user_id: u1.id, name: "Water bill", value: 200)
