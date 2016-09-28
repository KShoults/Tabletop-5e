class Map < ApplicationRecord
  serialize :tiles
  serialize :tokens
end
