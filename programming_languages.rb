def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |lang_types, langs|
    langs.each do |key, val|
      puts key,val,{:style =>[lang_types]}

    end
  end
end
