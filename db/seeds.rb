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

i1 = Income.create(user_id: u1.id, name: "SWE job", value: 5000)
i2 = Income.create(user_id: u1.id, name: "Babysitting", value: 600)
i3 = Income.create(user_id: u1.id, name: "Tutoring", value: 250)
i4 = Income.create(user_id: u2.id, name: "Teaching job", value: 800)

e1 = Expense.create(user_id: u1.id, name: "Rent", value: 1600)
e2 = Expense.create(user_id: u1.id, name: "Water/Electricity", value: 800)
e3 = Expense.create(user_id: u1.id, name: "Car Insurance", value: 250)
e4 = Expense.create(user_id: u1.id, name: "Student Loan", value: 500)
e5 = Expense.create(user_id: u1.id, name: "Groceries", value: 150)
e6 = Expense.create(user_id: u1.id, name: "Pet Supplies", value: 50)
e7 = Expense.create(user_id: u2.id, name: "Fuel", value: 400)
