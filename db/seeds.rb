require 'faker'

def seed_users
  3.times{User.create(email: Faker::Internet.email, password: Faker::Lorem.word)}
end

def seed_surveys
  Survey.create(title: "Dog Survey", user_id: 1)
  Survey.create(title: "Cat Survey", user_id: 2)
  Survey.create(title: "Coach Survey", user_id: 3)
end

def seed_questions
  Survey.all.each do |survey|
    3.times{survey.questions << Question.create(content: Faker::Lorem.sentence(9), survey_id: survey.id)}
  end
end

def seed_choices
  Question.all.each do |q|
   4.times{ q.choices << Choice.create(content:Faker::Lorem.sentence(5), question_id: q.id)}
  end
end


seed_users
seed_surveys
seed_questions
seed_choices
