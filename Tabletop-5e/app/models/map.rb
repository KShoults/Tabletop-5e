class Map < ApplicationRecord
  require 'tile'
  serialize :tiles
  serialize :tokens
end
