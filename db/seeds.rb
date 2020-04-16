# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Registration.destroy_all
AnswerSubmission.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
Lecture.destroy_all
Course.destroy_all
Teacher.destroy_all
Student.destroy_all
Login.destroy_all

Login.create(username: "Professor 1", password: "Password")
Login.create(username: "Professor 2", password: "Password")
Login.create(username: "Professor 3", password: "Password")
Login.create(username: "Professor 4", password: "Password")

Login.create(username: "Student 1", password: "Password")
Login.create(username: "Student 2", password: "Password")
Login.create(username: "Student 3", password: "Password")
Login.create(username: "Student 4", password: "Password")

puts "Seeded logins"

Teacher.create(name: "Henry McIlroy", bio: "I was the first teacher here! I teach Science.", login_id: Login.first.id)
Teacher.create(name: "Sarah Johnson", bio: "I was the second teacher here! I teach English", login_id: Login.second.id)
Teacher.create(name: "George Lawson", bio: "I was the third teacher here! I teach Math.", login_id: Login.third.id)
Teacher.create(name: "John Donaldson", bio: "I was the fourth teacher here! I teach Computer Science", login_id: Login.fourth.id)

puts "Seeded teachers"

Student.create(name: "James Morrison", major: "Science", login_id: Login.fifth.id)
Student.create(name: "Mary Lawson", major: "English", login_id: Login.all[5].id)
Student.create(name: "Jim Henderson", major: "Public Speaking", login_id: Login.all[6].id)
Student.create(name: "Georgina Powell", major: "Computer Science", login_id: Login.all[7].id)

puts "Seeded students"

Course.create(subject: "Biology", number: "BI-202", title: "Elements of Biology", teacher_id: Teacher.first.id)
Course.create(subject: "Chemistry", number: "CH-202", title: "Organic Chemistry", teacher_id: Teacher.first.id)
Course.create(subject: "Anatomy and Physiology", number: "AP-202", title: "Advanced A&P", teacher_id: Teacher.first.id)
Course.create(subject: "Biology", number: "BI-102", title: "Intro to Biology", teacher_id: Teacher.first.id)
Course.create(subject: "Chemistry", number: "CH-102", title: "Intro to Chemistry", teacher_id: Teacher.first.id)

Course.create(subject: "Composition", number: "EN-102", title: "Grammer and Composition", teacher_id: Teacher.second.id)
Course.create(subject: "Composition", number: "EN-202", title: "Creative Writing", teacher_id: Teacher.second.id)
Course.create(subject: "Literature", number: "LI-102", title: "American Literature", teacher_id: Teacher.second.id)
Course.create(subject: "Literature", number: "LI-356", title: "The Romantics", teacher_id: Teacher.second.id)
Course.create(subject: "Literature", number: "LI-412", title: "John Donne", teacher_id: Teacher.second.id)

Course.create(subject: "Math", number: "MA-102", title: "Algebra II", teacher_id: Teacher.third.id)
Course.create(subject: "Math", number: "MA-202", title: "Calculus II", teacher_id: Teacher.third.id)
Course.create(subject: "Math", number: "MA-340", title: "Differential Equations", teacher_id: Teacher.third.id)
Course.create(subject: "Math", number: "MA-402", title: "Linear Algebra", teacher_id: Teacher.third.id)
Course.create(subject: "Math", number: "MA-416", title: "Conversations in Mathematics", teacher_id: Teacher.third.id)

Course.create(subject: "Computer Science", number: "CS-346", title: "Ruby", teacher_id: Teacher.fourth.id)
Course.create(subject: "Computer Science", number: "CS-347", title: "Python", teacher_id: Teacher.fourth.id)
Course.create(subject: "Computer Science", number: "CS-348", title: "C++", teacher_id: Teacher.fourth.id)
Course.create(subject: "Computer Science", number: "CS-349", title: "Go", teacher_id: Teacher.fourth.id)
Course.create(subject: "Computer Science", number: "CS-350", title: "Javascript", teacher_id: Teacher.fourth.id)

puts "Seeded courses"

Registration.create(student_id: Student.first.id, course_id: Course.first.id)
Registration.create(student_id: Student.first.id, course_id: Course.second.id)
Registration.create(student_id: Student.first.id, course_id: Course.third.id)
Registration.create(student_id: Student.first.id, course_id: Course.fourth.id)
Registration.create(student_id: Student.first.id, course_id: Course.fifth.id)

puts "Seeded registrations"

Lecture.create(course_id: Course.first.id, title: "Class Introduction", content: "Welcome to the class! This class covers biology - the study of living things! We are excited to have you with us on this journey.", date: Date.new(2020, 04, 15))
Lecture.create(course_id: Course.fourth.id, title: "Lecture 1: What is Life?", content: "We discuss the nature of life", date: Date.new(2020, 04, 17))

puts "Seeded lectures"

Quiz.create(course_id: Course.first.id, title: "Lecture 1: 'What is Life?' Quiz")

puts "Quizzes seeded"

Question.create(quiz_id: Quiz.first.id, text: "Are rocks alive?")
Question.create(quiz_id: Quiz.first.id, text: "What quiz question number is this?")
Question.create(quiz_id: Quiz.first.id, text: "How many letters are in the English alphabet?")
Question.create(quiz_id: Quiz.first.id, text: "What is the powerhouse of the cell?")
Question.create(quiz_id: Quiz.first.id, text: "What was the sixth word on the fourth page of your reading?")

puts "Questions seeded"

Answer.create(question_id: Question.first.id, text: "No", correct: true)
Answer.create(question_id: Question.first.id, text: "Yes", correct: false)
Answer.create(question_id: Question.first.id, text: "Maybe", correct: false)
Answer.create(question_id: Question.first.id, text: "Pick the first answer", correct: false)

Answer.create(question_id: Question.second.id, text: "First", correct: false)
Answer.create(question_id: Question.second.id, text: "Second", correct: true)
Answer.create(question_id: Question.second.id, text: "Third", correct: false)
Answer.create(question_id: Question.second.id, text: "Fourth", correct: false)

Answer.create(question_id: Question.third.id, text: "25", correct: false)
Answer.create(question_id: Question.third.id, text: "27", correct: false)
Answer.create(question_id: Question.third.id, text: "26", correct: true)
Answer.create(question_id: Question.third.id, text: "11", correct: false)

Answer.create(question_id: Question.fourth.id, text: "Mitochondria", correct: true)
Answer.create(question_id: Question.fourth.id, text: "Flagellum", correct: false)
Answer.create(question_id: Question.fourth.id, text: "Cell wall", correct: false)
Answer.create(question_id: Question.fourth.id, text: "Liver", correct: false)

Answer.create(question_id: Question.fifth.id, text: "The", correct: false)
Answer.create(question_id: Question.fifth.id, text: "Life", correct: false)
Answer.create(question_id: Question.fifth.id, text: "Biology", correct: true)
Answer.create(question_id: Question.fifth.id, text: "Mitochondria", correct: false)

puts "Answers seeded"


