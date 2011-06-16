module LiferayContent

  class Article

    def self.get2(s)
      "titi"
    end

    def self.get(article_id)

      @params = {
        "serviceClassName"      => "com.liferay.portlet.journal.service.JournalArticleServiceUtil", 
        "serviceMethodName"     => "getArticle", 
        "serviceParameters"     => "[groupId,articleId]",
        "groupId"               => LiferayContent.group_id,
        "articleId"             => article_id
      }

      req = Net::HTTP::Post.new(LiferayContent.uri, initheader = {'Content-Type' =>'application/json'})
      req.basic_auth LiferayContent.login, LiferayContent.password
      req.set_form_data @params

      response = Net::HTTP.new(LiferayContent.host, LiferayContent.port).start {|http| http.request(req) }

      result = JSON.parse response.body

      doc = Hpricot.XML(result["content"])
      result = (doc/"static-content").first.inner_text

      return result
    end

  end

end