# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url1 = 'https://api.fda.gov/food/enforcement.json?api_key=4DXoWNhsP5vazpe7CL4eUNZUBksAQJm0CvK72mNP&search=classification:"Class+III"&limit=5'
url2 = 'https://api.fda.gov/food/enforcement.json?api_key=4DXoWNhsP5vazpe7CL4eUNZUBksAQJm0CvK72mNP&search=classification:"Class+II"&limit=5'
url3 = 'https://api.fda.gov/food/enforcement.json?api_key=4DXoWNhsP5vazpe7CL4eUNZUBksAQJm0CvK72mNP&search=classification:"Class+I"&limit=5'

urls = [url1, url2, url3]

urls.each do |url|
  response = JSON.parse(RestClient.get(url))
  response["results"].each do |result|
    columns = Recall.create
    result.each do |key, val|
      ignoreArr = ["openfda", "more_code_info"]
      unless ignoreArr.include?(key)
        if key == "postal_code"
          columns[key] = val[0...5]
          # byebug
        else
          columns[key] = val
        end
      end
      columns.save
    end
  end
end
