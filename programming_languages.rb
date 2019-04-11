require 'pry'

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }

# Output
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }


def reformat_languages(languages)
  # your code here
  hash = {}
  new_hash ={}
  languages.each do |languages_style, langs|
    langs.each do |langs_names, lang_types|
      # puts key,val,:style =>[lang_types]
      #language = langs.key, the language type = langs.values,
      #styles = lang_styles, for each language,
      #use the language as the key & {the language type
      #as key/val pair 1 and styles as key/val pair 2
      #the style val is an array which is appended to/
      #pushed if the value is not found.
      new_hash[langs_names]=lang_types
      new_hash.store(:style,[languages_style])
    end
    hash.merge!(new_hash)
  end
  binding.pry
  puts hash
end
