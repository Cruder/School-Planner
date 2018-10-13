# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

disciplines_attributes = [
  { name: 'Histoire', description: 'Le dessous des cartes' },
  { name: 'Maths', description: 'Pythagore' },
  { name: 'Anglais', description: 'LV1' },
  { name: 'SVT', description: 'Sciences de la Vie et de la Terre' }
]

disciplines = Discipline.create disciplines_attributes

assignments_attributes = [
  { title: 'Disserte', description: 'wqe', due_to: 1.day.from_now, discipline: disciplines[0] },
  { title: 'Exercices', description: 'wqeqwe', due_to: 2.day.from_now, discipline: disciplines[1] },
  { title: 'Controle', description: 'ewfrewfewfw', due_to: 3.day.from_now, discipline: disciplines[1] },
  { title: 'Soutenance', description: 'ewfweff', due_to: 4.day.from_now, discipline: disciplines[2] },
  { title: 'Punition', description: 'ewffewf', due_to: 4.day.from_now, discipline: disciplines[3] },
  { title: 'Présentation', description: 'wefwfewf', due_to: 5.day.from_now, discipline: disciplines[2] }
]

assignments = Assignment.create assignments_attributes
