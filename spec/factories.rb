FactoryGirl.define do
  factory :portfolio do
    project_name "konfa"
    whens "last summer"
    description "serwer na wielu uzytkownikow"
  end

  factory :function do
    description "serwer"
    portfolio
  end
end