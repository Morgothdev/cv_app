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

    factory :admin do
        login "admin"
        password "adminpass"
        password_confirmation "adminpass"
    end
end