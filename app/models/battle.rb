class Battle < ApplicationRecord
  has_many :monsters, through: monster
  has_one :winner, through: monsters
  has_one :monsterA, through: monsters
  has_one :monsterB, through: monsters
end
