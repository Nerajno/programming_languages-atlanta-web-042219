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

new_hash = {}
def reformat_languages(languages)
    style_hash = {}
    languages.each do |styles, lang|
      #iterate each lang
      lang.each do |key, vals|
      # binding.pry
      new_hash[key]= {vals.keys => vals.values}
      style_hash[:style]=[styles]
      # new_hash.merge!(style_hash)
      new_hash[key].store :style,[styles]
      # binding.pry
      new_hash
      puts new_hash
      end
    end
    new_hash.merge!(new_hash)
    binding.pry
    new_hash
end
