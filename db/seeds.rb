# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Product.create ({
    name: 'FOREST',
    price: 20,
    description: 'Lorem Ipsum is simply dummy text of the printing and
    typesetting industry. Lorem Ipsum has been the industrys standard dummy text
    ever since the 1500s, when an unknown printer took a galley of type and
    scrambled it to make a type specimen book. It has survived not only five
    centuries, but also the leap into electronic typesetting, remaining
    essentially unchanged. It was popularised in the 1960s with the release
    of Letraset sheets containing Lorem Ipsum passages, and more recently with
    desktop publishing software like Aldus PageMaker including versions of Lorem
    Ipsum.'
  })
end

Post.create ([{
  section:'ABOUT',
  name: 'ABOUT  YAD EZRA V’SHULAMIT',
  description: 'Yad Ezra V’Shulamit addresses the needs of impoverished
  families, regardless of religious affiliation, ethnicity, age, and location of
  residence.We distribute 3,000 food baskets every week, and 15,000 more during
  holiday seasons.The children who attend Yad Ezra V’Shulamit Children’s Centers
  are provided with a nutritious meal, academic tutoring, and an enriching
  social environment.
  Youth clubs host activities for teens-at-risk to provide them with
  social-emotional support and the tools necessary to become responsible,
  contributing members of society. As a result, youngsters born into poverty
  are enabled to expand their horizons in a safe and encouraging environment.
  Additionally, the Yad Ezra V’Shulamit job desk gives vocational guidance to
  unemployed individuals. Yad Ezra V’Shulamit also provides the families it
  serves with financial assistance for out of the ordinary expenses such as
  school supplies, winter gear, medical care, various therapies, and the means
  to celebrate life cycle events with dignity.'
},
{ section:'ABOUT',
  name:'A LETTER FROM ME',
  description:'Yad Ezra V’Shulamit addresses the needs of impoverished
  families, regardless of religious affiliation, ethnicity, age, and location of
  residence.We distribute 3,000 food baskets every week, and 15,000 more during
  holiday seasons.The children who attend Yad Ezra V’Shulamit Children’s Centers
  are provided with a nutritious meal, academic tutoring, and an enriching
  social environment.
  Youth clubs host activities for teens-at-risk to provide them with
  social-emotional support and the tools necessary to become responsible,
  contributing members of society. As a result, youngsters born into poverty are
  enabled to expand their horizons in a safe and encouraging environment.
  Additionally, the Yad Ezra V’Shulamit job desk gives vocational guidance to
  unemployed individuals. Yad Ezra V’Shulamit also provides the families it
  serves with financial assistance for out of the ordinary expenses such as
  school supplies, winter gear, medical care, various therapies, and the means
  to celebrate life cycle events with dignity.'
}])
