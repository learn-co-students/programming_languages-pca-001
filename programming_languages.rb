require 'pry'
def reformat_languages(languages)
  langs_by_name = {}

  languages.each do |style, langs|
    langs.each do |lang, type|

      curr_styles = langs_by_name[lang] ? langs_by_name[lang][:style] : []
      curr_styles << style

      langs_by_name[lang] =
      {
        type: type[:type],
        style: curr_styles
      }
    end
  end
  langs_by_name
end
