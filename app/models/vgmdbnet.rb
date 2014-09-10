module Vgmdbnet
  class AlbumImporter
    def initialize(api_url, api_key, api_options = {})
      @api_url = api_url
      @api_key = api_key
      @api_options = api_options
    end

    def results
      document_results.to_enum
    end

    private

    def document_results
      document['results']
    end

    def document
      @document ||= parse(response)
    end

    def response
      params = { apikey: @api_key }
      RestClient.get @api_url, params: params.update(@api_options)
    end

    def parse(response)
      JSON.parse(response)
    end
  end

  class AlbumParser
    def self.album_from_json(result)
      api_id = api_id_from(result['url'])
      album = result['album'].first # xml?
      album.update(api_id: api_id)
    end

    def self.tracks_from_json(result)
      result['tracks'] || []
    end

    def self.api_id_from(url)
      url.split('/').last
    end
  end
end

# document database

# sync... perhaps we don't even need it, just drop => webhooks and dont care

#
