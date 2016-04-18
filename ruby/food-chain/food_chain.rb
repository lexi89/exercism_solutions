class FoodChain
  VERSION = 2
  FOODCHAIN = %w[fly spider bird cat dog goat cow]

  INTROS = {
    "fly" => "I know an old lady who swallowed a fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n",

    "spider" => "I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.\n",

    "bird" => "I know an old lady who swallowed a bird.\nHow absurd to swallow a bird!\n",

    "cat" => "I know an old lady who swallowed a cat.\nImagine that, to swallow a cat!\n",

    "dog" => "I know an old lady who swallowed a dog.\nWhat a hog, to swallow a dog!\n",

    "goat" => "I know an old lady who swallowed a goat.\nJust opened her throat and swallowed a goat!\n",

    "cow" => "I know an old lady who swallowed a cow.\nI don't know how she swallowed a cow!\n"
  }

  REASONS = {
    "cow" => "She swallowed the cow to catch the goat.\n",
    "goat" => "She swallowed the goat to catch the dog.\n",
    "dog" => "She swallowed the dog to catch the cat.\n",
    "cat" => "She swallowed the cat to catch the bird.\n",
    "bird" => "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n",
    "spider" => "She swallowed the spider to catch the fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n",
    "fly" => ""
  }

  def self.song
    song = ""
    for i in FOODCHAIN
      song << INTROS[i]
      for j in (FOODCHAIN[0..FOODCHAIN.index(i)].reverse)
        song << REASONS[j]
      end
      song << "\n"
    end
    song << "I know an old lady who swallowed a horse.\nShe's dead, of course!\n"
    return song
  end
end