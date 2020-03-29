require_relative 'serp_api_client'

# Ebay Search Result for Ruby powered by SerpApi
#
# Search API Usage
#
# ```ruby
# parameter = {
#   _nkw: "query",
#   api_key: "Your SERP API Key"
# }
#
# client = EbaySearchResults.new(parameter)
# client.params[:ebay_domain] = "ebay.com"
#
# html_results = client.get_html
# hash_results = client.get_hash
# json_results = client.get_json
#
# ```
#
# doc: https://serpapi.com/ebay-search-api

class EbaySearchResults < SerpApiClient

  def initialize(params = {})
    super(params, EBAY_ENGINE)
    check_params([:_nkw, :engine])
  end

  def get_location
    raise 'location is not supported by ' + EBAY_ENGINE
  end

end