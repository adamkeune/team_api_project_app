# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Student.create!(first_name: "Adam", last_name: "Keune", email: "adam@email.com", phone_number: "3125554567", short_bio: "Adam likes karaoke", linkedin_url: "linkedin.com/the_only_adam", twitter_handle: "twitter.com/the_only_adam", personal_url: "adam.com", resume_url: "resume.com/1", github_url: "github.com/adam", photo_url: "")
Student.create!(first_name: "Fiona", last_name: "Ian", email: "fiona@email.com", phone_number: "3125556789", short_bio: "Fiona likes sitcoms", linkedin_url: "linkedin.com/the_only_fiona", twitter_handle: "twitter.com/the_only_fiona", personal_url: "fiona.com", resume_url: "resume.com/2", github_url: "github.com/fiona", photo_url: "")
Student.create!(first_name: "Tom", last_name: "Rajkovich", email: "tom@email.com", phone_number: "3125558901", short_bio: "Tom enjoys long walks on the beach", linkedin_url: "linkedin.com/the_only_tom", twitter_handle: "twitter.com/the_only_tom", personal_url: "tom.com", resume_url: "resume.com/3", github_url: "github.com/tom", photo_url: "")

Experience.create!(start_date: Time.now, end_date: 10.days.from_now, job_title: "Software developer", company_name: "Actualize", details: "")
Experience.create(start_date: Time.now, end_date: 10.days.from_now, job_title: "Software developer", company_name: "Actualize", details: "")
Experience.create!(start_date: Time.now, end_date: 10.days.from_now, job_title: "Software developer", company_name: "Actualize", details: "")

Education.create!(start_date: Time.now, end_date: 10.days.from_now, degree: "Software engineering", university_name: "Actualize", details: "Making apps")
Education.create!(start_date: Time.now, end_date: 10.days.from_now, degree: "Software engineering", university_name: "Actualize", details: "Making apps")
Education.create!(start_date: Time.now, end_date: 10.days.from_now, degree: "Software engineering", university_name: "Actualize", details: "Making apps")

Skill.create!(skill_name: "Rails expert")
Skill.create!(skill_name: "Rails expert")
Skill.create!(skill_name: "Rails expert")

Capstone.create!(name: "Facebook", description: "Cool site where you can post on walls", url: "facebook.com", screenshot_url: "")
Capstone.create!(name: "Google", description: "Search everything", url: "google.com", screenshot_url: "")
Capstone.create!(name: "Uber", description: "Cabs on your phone", url: "uber.com", screenshot_url: "")
