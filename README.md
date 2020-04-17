# School Central

## Overview

Student Central offers an online learning platform intended to equip the next generation. This application allows students to register for classes, view lectures, and take quizzes. Professors can log on to edit and create classes, lectures, and quizzes.

## Installation

1. Clone down the repository
2. Run ```bundle install```
3. Run rails db:migrate (you may need to run ```yarn install --check-files``` as well)
4. Run ```rails db:seed```
5. Run ```rails s```
6. Navigate to http://127.0.0.1:3000/dashboard in your browser

To see a student's perspective of the website, login with "Student 1" as the username and "Password" as the password. For a professor's view, use "Professor 1" and "Password".

## Further Implementation

- Validations for quiz creation
- Ability for professors to add students into their classes
- Ability for students to see their overall class grade