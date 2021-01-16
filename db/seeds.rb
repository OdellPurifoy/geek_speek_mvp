# frozen_string_literal: true

require 'faker'

10.times do
  content = Faker::Lorem.paragraph(sentence_count: 5) #=> "Recusandae minima consequatur. Expedita sequi blanditiis. Ut fuga et."
  speek = Speek.create(content: content, user_id: 1)
  speek.save
end
