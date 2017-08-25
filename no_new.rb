require './lib/primus'

include Primus

hash = { 'a' => 1, 'b' => 2, 'c' => 3 }

puts call(hash)
