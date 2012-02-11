Factory.define :lead do |l|
  l.user                { |a| a.association(:user) }
  l.campaign            { |a| a.association(:campaign) }
  l.assigned_to         nil
  l.first_name          { Faker::Name.first_name }
  l.last_name           { Faker::Name.last_name }
  l.access              "Public"
  l.company             { Faker::Company.name }
  l.title               { Factory.next(:title) }
  l.source              { %w(campaign cold_call conference online referral self web word_of_mouth other).sample }
  l.status              { %w(new contacted converted rejected).sample }
  l.rating              1
  l.referred_by         { Faker::Name.name }
  l.do_not_call         false
  l.blog                { Factory.next(:website) }
  l.linkedin            { Factory.next(:website) }
  l.facebook            { Factory.next(:website) }
  l.twitter             { Factory.next(:website) }
  l.email               { Faker::Internet.email }
  l.alt_email           { Faker::Internet.email }
  l.phone               { Faker::PhoneNumber.phone_number }
  l.mobile              { Faker::PhoneNumber.phone_number }
  l.background_info     { Faker::Lorem.paragraph[0,255] }
  l.deleted_at          nil
  l.updated_at          { Factory.next(:time) }
  l.created_at          { Factory.next(:time) }
end

