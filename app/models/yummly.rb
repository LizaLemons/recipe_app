class Yummly

  def self.search(search_term)
    results = HTTParty.get(URI.escape(
    "http://api.yummly.com/v1/api/recipes?_app_id=8541023c&_app_key=99877d3e6c0977fb1b275698190aa079&q=#{search_term}&requirePictures=true"
    ))
    return results["matches"][0..9]
  end

  def self.filter(search_results, search_term)
    search_array = search_term.split
    shop_lists = []
    search_results.each do |result|
      search_array.each do |term|
        shop_lists << result["ingredients"].reject { |ingredient| ingredient.include?(term)}
      end
    end
    return shop_lists
  end

end
