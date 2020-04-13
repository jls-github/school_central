# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lecture.destroy_all
Course.destroy_all

Course.create(subject: "Biology", number: "BI-202", title: "Elements of Biology")
Course.create(subject: "Chemistry", number: "CH-202", title: "Organic Chemistry")
Course.create(subject: "Anatomy and Physiology", number: "AP-202", title: "Advanced A&P")
Course.create(subject: "Public Speaking", number: "SP-102", title: "Basics of Public Speaking")
Course.create(subject: "English", number: "EN-102", title: "Grammer and Composition")

Lecture.create(course_id: Course.fourth.id, title: "Expository Speeeches Pt 1", content: "This is the first part of how you give an expository speech", date: Date.new(2020, 02, 03))
Lecture.create(course_id: Course.fourth.id, title: "Expository Speeeches Pt 2", content: "This is the second part of how you give an expository speech", date: Date.new(2020, 02, 05))