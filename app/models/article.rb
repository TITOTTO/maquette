class Article < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :rates

    has_many_attached :images do |attachable|
      attachable.variant :thumb, resize_to_limit: [100, 100]
    end

    def somme
      @somme = 0
      self.rates.each do |note|
        @somme += note.note
      end
      return @somme
    end
end
