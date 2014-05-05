describe "TwitterHashtag", ->
    it "sets this.el to the hashtag element", ->
        twitter = new TwitterHashtag
        expect(twitter.$el).toBe($('.hashtag'))