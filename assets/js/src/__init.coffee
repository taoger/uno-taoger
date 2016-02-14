'use strict'

$ ->

  window.Uno = Uno =
    version: '2.5.4'

    search:
      container: -> $('#results')
      form: (action) -> $("#search-container")[action]()

    loadingBar: (action) -> $(".pace")[action]()

    context: ->
      # get the context from the first class name of body
      # https://github.com/TryGhost/Ghost/wiki/Context-aware-Filters-and-Helpers
      className = document.body.className.split(" ")[0].split("-")[0]
      if className is "" then 'error' else className

    is: (property, value) -> document.body.dataset[property] is value

    readTime: ->
      DateInDays = (selector, cb) ->
        $(selector).each ->
          #postDate = $(this).html()
          date = $(this).html()
          postDate = this.outerHTML.substr(16,16)
          postDateNow = new Date(Date.now())
          postDateInDays = Math.floor((postDateNow - new Date(postDate)) / 86400000)

          if postDateInDays is 0 then postDateInDays = '今天'
          else if postDateInDays is 1 then postDateInDays = "昨天"
          #else postDateInDays = "#{postDateInDays} days ago"
          else postDateInDays = date

          $(this).html(postDateInDays)
          $(this).mouseover -> $(this).html(postDate)
          $(this).mouseout -> $(this).html(postDateInDays)
      DateInDays ".post.meta > time"

    device: ->
      w = window.innerWidth
      h = window.innerHeight
      return 'mobile' if (w <= 480)
      return 'tablet' if (w <= 1024)
      'desktop'
