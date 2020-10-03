# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Admin.create!(
#    name: 'kb',
#    email: 'kb@icloud.com',
#    password: 'kbtest'
# )


# 6.times do |index|
#    Item.create!(
#       name: '女性',
#       detail: 'GORE-TEX®と再びパートナーシップを組み、風雨からの防護性に優れたガーメントをリリースします。今回のコレクションにはGORE-TEX®が特許を取得している、防水透湿素材を使ったシェル、パンツ、バケットハットをラインナップ。
   
#                100%ポリエステル - インポート。',
#       price: 19000,
#       hide: false
#    )
   
#    num=index+1
#    item=Item.find(num)
#    item.images.attach(io: File.open('public/IMG_0539.jpg'), filename: 'IMG_0539.jpg')
#    num+=index
#  end

6.times do |index|
   item=Item.create!(
      name: '女性',
      detail: 'GORE-TEX®と再びパートナーシップを組み、風雨からの防護性に優れたガーメントをリリースします。今回のコレクションにはGORE-TEX®が特許を取得している、防水透湿素材を使ったシェル、パンツ、バケットハットをラインナップ。
   
               100%ポリエステル - インポート。',
      price: 19000,
      hide: false
   )
   item.images.attach(io: File.open('public/IMG_0539.jpg'), filename: 'IMG_0539.jpg')
 end
