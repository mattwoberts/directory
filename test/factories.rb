Factory.define :company do |f|
  f.name "company name"
  f.description "Company description"
  f.address1 "123 four five six"
  f.city "Bognor Regis"
  f.county "Lancishuure"
  f.postcode "123 IUY"
  f.sequence(:email) {|n| "john#{n}.harkins@example.com"}
  f.phone "01111 223344"
end

Factory.define :category do |f|
  f.sequence(:name) {|n| "Category {n}"}
end


