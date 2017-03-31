# README

* Ruby version: 5.0.2

* Rails commands called

        rails generate scaffold Person first_name:string last_name:string email:string
        rails generate scaffold Course title:string code:string person:references
        rails generate scaffold Enrollment person:references course:references
        rails db:migrate

        // Use teacher instead of person in Course controllers
        rails generate scaffold_controller Course title:string code:string teacher:references --force
