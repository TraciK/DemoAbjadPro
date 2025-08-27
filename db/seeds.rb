# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb - Complete Arabic Letters Data
arabic_letters = [
  # Level 1 - Basic letters (commonly used, simple shapes)
  { 
    letter: 'ا', 
    transliteration: 'alif', 
    name: 'Alif', 
    isolated_form: 'ا', 
    initial_form: nil, 
    medial_form: nil, 
    final_form: 'ـا', 
    difficulty_level: 1,
    pronunciation_guide: "Like 'a' in 'father' when long, or short 'a' sound"
  },
  { 
    letter: 'ب', 
    transliteration: 'ba', 
    name: 'Ba', 
    isolated_form: 'ب', 
    initial_form: 'بـ', 
    medial_form: 'ـبـ', 
    final_form: 'ـب', 
    difficulty_level: 1,
    pronunciation_guide: "Like 'b' in 'boy'"
  },
  { 
    letter: 'ت', 
    transliteration: 'ta', 
    name: 'Ta', 
    isolated_form: 'ت', 
    initial_form: 'تـ', 
    medial_form: 'ـتـ', 
    final_form: 'ـت', 
    difficulty_level: 1,
    pronunciation_guide: "Like 't' in 'top'"
  },
  { 
    letter: 'م', 
    transliteration: 'meem', 
    name: 'Meem', 
    isolated_form: 'م', 
    initial_form: 'مـ', 
    medial_form: 'ـمـ', 
    final_form: 'ـم', 
    difficulty_level: 1,
    pronunciation_guide: "Like 'm' in 'moon'"
  },
  { 
    letter: 'ل', 
    transliteration: 'lam', 
    name: 'Lam', 
    isolated_form: 'ل', 
    initial_form: 'لـ', 
    medial_form: 'ـلـ', 
    final_form: 'ـل', 
    difficulty_level: 1,
    pronunciation_guide: "Like 'l' in 'love'"
  },
  { 
    letter: 'ن', 
    transliteration: 'noon', 
    name: 'Noon', 
    isolated_form: 'ن', 
    initial_form: 'نـ', 
    medial_form: 'ـنـ', 
    final_form: 'ـن', 
    difficulty_level: 1,
    pronunciation_guide: "Like 'n' in 'noon'"
  },
  { 
    letter: 'ر', 
    transliteration: 'ra', 
    name: 'Ra', 
    isolated_form: 'ر', 
    initial_form: nil, 
    medial_form: nil, 
    final_form: 'ـر', 
    difficulty_level: 1,
    pronunciation_guide: "Rolled 'r' sound, like Spanish 'rr'"
  },
  { 
    letter: 'س', 
    transliteration: 'seen', 
    name: 'Seen', 
    isolated_form: 'س', 
    initial_form: 'سـ', 
    medial_form: 'ـسـ', 
    final_form: 'ـس', 
    difficulty_level: 1,
    pronunciation_guide: "Like 's' in 'see'"
  },

  # Level 2 - Similar looking letters (potential confusion)
  { 
    letter: 'ث', 
    transliteration: 'tha', 
    name: 'Tha', 
    isolated_form: 'ث', 
    initial_form: 'ثـ', 
    medial_form: 'ـثـ', 
    final_form: 'ـث', 
    difficulty_level: 2,
    pronunciation_guide: "Like 'th' in 'think'"
  },
  { 
    letter: 'ج', 
    transliteration: 'jeem', 
    name: 'Jeem', 
    isolated_form: 'ج', 
    initial_form: 'جـ', 
    medial_form: 'ـجـ', 
    final_form: 'ـج', 
    difficulty_level: 2,
    pronunciation_guide: "Like 'j' in 'jar'"
  },
  { 
    letter: 'ح', 
    transliteration: 'ha', 
    name: 'Ha', 
    isolated_form: 'ح', 
    initial_form: 'حـ', 
    medial_form: 'ـحـ', 
    final_form: 'ـح', 
    difficulty_level: 2,
    pronunciation_guide: "Strong 'h' sound from the throat"
  },
  { 
    letter: 'خ', 
    transliteration: 'kha', 
    name: 'Kha', 
    isolated_form: 'خ', 
    initial_form: 'خـ', 
    medial_form: 'ـخـ', 
    final_form: 'ـخ', 
    difficulty_level: 2,
    pronunciation_guide: "Like 'ch' in German 'ach' or Scottish 'loch'"
  },
  { 
    letter: 'ف', 
    transliteration: 'fa', 
    name: 'Fa', 
    isolated_form: 'ف', 
    initial_form: 'فـ', 
    medial_form: 'ـفـ', 
    final_form: 'ـف', 
    difficulty_level: 2,
    pronunciation_guide: "Like 'f' in 'fire'"
  },
  { 
    letter: 'ق', 
    transliteration: 'qaf', 
    name: 'Qaf', 
    isolated_form: 'ق', 
    initial_form: 'قـ', 
    medial_form: 'ـقـ', 
    final_form: 'ـق', 
    difficulty_level: 2,
    pronunciation_guide: "Deep 'k' sound from back of throat"
  },
  { 
    letter: 'ك', 
    transliteration: 'kaf', 
    name: 'Kaf', 
    isolated_form: 'ك', 
    initial_form: 'كـ', 
    medial_form: 'ـكـ', 
    final_form: 'ـك', 
    difficulty_level: 2,
    pronunciation_guide: "Like 'k' in 'kite'"
  },
  { 
    letter: 'ي', 
    transliteration: 'ya', 
    name: 'Ya', 
    isolated_form: 'ي', 
    initial_form: 'يـ', 
    medial_form: 'ـيـ', 
    final_form: 'ـي', 
    difficulty_level: 2,
    pronunciation_guide: "Like 'y' in 'yes' or long 'ee' sound"
  },

  # Level 3 - More challenging letters with unique sounds
  { 
    letter: 'د', 
    transliteration: 'dal', 
    name: 'Dal', 
    isolated_form: 'د', 
    initial_form: nil, 
    medial_form: nil, 
    final_form: 'ـد', 
    difficulty_level: 3,
    pronunciation_guide: "Like 'd' in 'door'"
  },
  { 
    letter: 'ذ', 
    transliteration: 'thal', 
    name: 'Thal', 
    isolated_form: 'ذ', 
    initial_form: nil, 
    medial_form: nil, 
    final_form: 'ـذ', 
    difficulty_level: 3,
    pronunciation_guide: "Like 'th' in 'this'"
  },
  { 
    letter: 'ز', 
    transliteration: 'zay', 
    name: 'Zay', 
    isolated_form: 'ز', 
    initial_form: nil, 
    medial_form: nil, 
    final_form: 'ـز', 
    difficulty_level: 3,
    pronunciation_guide: "Like 'z' in 'zoo'"
  },
  { 
    letter: 'ش', 
    transliteration: 'sheen', 
    name: 'Sheen', 
    isolated_form: 'ش', 
    initial_form: 'شـ', 
    medial_form: 'ـشـ', 
    final_form: 'ـش', 
    difficulty_level: 3,
    pronunciation_guide: "Like 'sh' in 'sheep'"
  },
  { 
    letter: 'ص', 
    transliteration: 'sad', 
    name: 'Sad', 
    isolated_form: 'ص', 
    initial_form: 'صـ', 
    medial_form: 'ـصـ', 
    final_form: 'ـص', 
    difficulty_level: 3,
    pronunciation_guide: "Emphatic 's' sound, deeper than regular 's'"
  },
  { 
    letter: 'ض', 
    transliteration: 'dad', 
    name: 'Dad', 
    isolated_form: 'ض', 
    initial_form: 'ضـ', 
    medial_form: 'ـضـ', 
    final_form: 'ـض', 
    difficulty_level: 3,
    pronunciation_guide: "Emphatic 'd' sound, unique to Arabic"
  },
  { 
    letter: 'ط', 
    transliteration: 'ta', 
    name: 'Ta (emphatic)', 
    isolated_form: 'ط', 
    initial_form: 'طـ', 
    medial_form: 'ـطـ', 
    final_form: 'ـط', 
    difficulty_level: 3,
    pronunciation_guide: "Emphatic 't' sound, deeper than regular 't'"
  },
  { 
    letter: 'ظ', 
    transliteration: 'za', 
    name: 'Za (emphatic)', 
    isolated_form: 'ظ', 
    initial_form: 'ظـ', 
    medial_form: 'ـظـ', 
    final_form: 'ـظ', 
    difficulty_level: 3,
    pronunciation_guide: "Emphatic 'th' sound, like 'th' in 'this' but deeper"
  },

  # Level 4 - Most challenging letters with throat sounds
  { 
    letter: 'ع', 
    transliteration: 'ayn', 
    name: 'Ayn', 
    isolated_form: 'ع', 
    initial_form: 'عـ', 
    medial_form: 'ـعـ', 
    final_form: 'ـع', 
    difficulty_level: 4,
    pronunciation_guide: "Deep throat sound, like clearing throat gently"
  },
  { 
    letter: 'غ', 
    transliteration: 'ghayn', 
    name: 'Ghayn', 
    isolated_form: 'غ', 
    initial_form: 'غـ', 
    medial_form: 'ـغـ', 
    final_form: 'ـغ', 
    difficulty_level: 4,
    pronunciation_guide: "Like French 'r' or gargling sound"
  },
  { 
    letter: 'ه', 
    transliteration: 'ha', 
    name: 'Ha (soft)', 
    isolated_form: 'ه', 
    initial_form: 'هـ', 
    medial_form: 'ـهـ', 
    final_form: 'ـه', 
    difficulty_level: 4,
    pronunciation_guide: "Soft 'h' sound, like 'h' in 'house'"
  },
  { 
    letter: 'و', 
    transliteration: 'waw', 
    name: 'Waw', 
    isolated_form: 'و', 
    initial_form: nil, 
    medial_form: nil, 
    final_form: 'ـو', 
    difficulty_level: 4,
    pronunciation_guide: "Like 'w' in 'water' or long 'oo' sound"
  },
  
  # Hamza (special case - can appear with different carriers)
  { 
    letter: 'ء', 
    transliteration: 'hamza', 
    name: 'Hamza', 
    isolated_form: 'ء', 
    initial_form: 'أ', 
    medial_form: 'ؤ', 
    final_form: 'ئ', 
    difficulty_level: 4,
    pronunciation_guide: "Glottal stop, like the pause in 'uh-oh'"
  }
]

# Seed the database
arabic_letters.each do |letter_data|
  ArabicLetter.find_or_create_by(letter: letter_data[:letter]) do |letter|
    letter.assign_attributes(letter_data)
  end
end

puts "Seeded #{ArabicLetter.count} Arabic letters"
