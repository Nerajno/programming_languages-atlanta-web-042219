require 'pry'

def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |lang_styles, langs|
    langs.each do |key, val|
      # puts key,val,:style =>[lang_types]
      #language = langs.key, the language type = langs.values,
      #styles = lang_styles, for each language,
      #use the language as the key & {the language type
      #as key/val pair 1 and styles as key/val pair 2
      #the style val is an array which is appended to/
      #pushed if the value is not found.
      binding.pry
      hash[langs.key]=langs.valves
    end
  end
  puts hash
end
