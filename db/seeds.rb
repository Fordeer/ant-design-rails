# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

0.upto(99) do |i|
  RuleListItem.create!(
    disabled: (i % 6).zero?,
    href: 'https://github.com/pmq20/ant-design-rails',
    avatar: [
      'https://gw.alipayobjects.com/zos/rmsportal/eeHMaZBwmTvLdIwMfBpg.png',
      'https://gw.alipayobjects.com/zos/rmsportal/udxAbMEhpwthVVcjLXik.png'
    ][i % 2],
    name: "TradeCode #{i}",
    owner: 'Lili Qu',
    desc: 'This is a description',
    call_no: (rand * 1000).floor,
    status: (rand * 10).floor % 4,
    progress: (rand * 100).ceil
  )
end
