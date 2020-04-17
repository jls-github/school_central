# User Stories

## Student

- As a student, I want to view my classes
- As a student, I want to see my lectures and quizzes on my class show page
- As a student, I want to view individual lectures
- As a student, I want to take quizzes
- As a student, I want to see my quiz grades
- As a student, I want to sign up for a class

## Teacher

- As a teacher, I want to view my classes
- As a teacher, I want to view my lectures and quizzes on my class show page
- As a teacher, I want to view my individual lectures
- As a teacher, I want to edit my individual lectures
- As a teacher, I want to create lectures
- As a teacher, I want to view my quizzes with the answers present
- As a teacher, I want to edit my quizzes
- As a teacher, I want to create quizzes
- As a teacher, I want to create classes

## Users

- As a user, I want to log in and be directed to the proper page (student or teacher)
- As a user, I want to log in with a secure password
- As a user, I want to create an account

# Components

## Monday

[x] Student model
    [x] Migration
        - name
        - major
    [x] Model
        
[x] Course model
    [x] Migration
        - subject
        - number
        - title
    [x] Model
    [x] Controller/Routes
        - index
        - show

[x] Student Registration model (join table)
    [x] Migraiton
        - student_id
        - class_id
    [x] Model

[x] Many to Many Relationship
[x] Migration  

[x] Course Index Page
[x] Course Show Page

[x] Lecture model
    [x] Migration
        - title
        - class_id
        - content
        - date
    [x] Model
    [x] Controller
        - show
[x] Lecture show page

[x] Teacher model
    [x] Migration
        - name
        - bio
    [x] Model
    [x] Controller
        -index
        -show
    [x] Show page
        - teacher, bio, list of courses - not linked
    [x] Index page

[x] Add teacher_id to model
[x] Relationships
[x] Add teacher name and link to course page

[x] Login model
    [x] Migration
        -password_digest
        -username
    [x] Model
    [x] Foreign Keys for student and teacher
    [x] Bcrypt
    [x] has_secure_password on model
    [x] Login page

## Tuesday

[x] Authorization Pt 1
    [x] Student course index page
        [x] Can only see courses they are enrolled in
        [x] Cannot edit or delete courses
    [x] Teacher course index page
        [x] Can only see courses they teach

[x] Course edit page
[x] Course new page

[x] Lecture edit page
[x] Lecture new page

[x] Course delete action
[x] Lecture delete action

[x] Authorization Pt 2
    [x] Build out redirect explanation views
    [x] Implement triple layer auth
        [x] Make methods w/ redirects
        [x] Add buttons to views with auth logic
        [x] Add before_actions

[x] Dashboard
[x] Account creation
    [x] Routes
    [x] Controller
    [x] Nested attributes for students

[x] Basic bootstrap

## Wednesday

[x] Quiz functionality
    [x] Models
        [x] Quiz
        [x] Question
        [x] Answer
        [x] Answer Submission
        [x] Seed
    [x] Quiz show page
        [x] Show page
        [x] Quiz submission
    [x] Quiz results page
        [x] Switch - a student who has taken the quiz sees their results
        [x] Quiz results
    [x] Quiz creation
    [x] Quiz deleting
    [x] Doublecheck permissions

[x] Logout functionality

## Thursday

[x] Fix incorrect password issues

[x] Student Registration Functionality

[x] Add more seeds

[x] Readme

[x] License

## Friday

[ ] Validations
    [ ] Quiz
    [ ] Lecture
    [ ] Log In

# Stretch Goals

[x] Add Bootstrap
[ ] Messaging
