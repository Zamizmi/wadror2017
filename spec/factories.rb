FactoryGirl.define do
  factory :user do
    username "Pekka"
    password "Foobar1"
    password_confirmation "Foobar1"
  end

  factory :brewery do
    name "anonymous"
    year 1900
  end

  factory :beer do
    name "anonymousbeer"
    brewery
    style "Lager"
  end

  factory :rating do
    score 10
  end

  factory :rating2, class: Rating do
    score 30
  end
end
