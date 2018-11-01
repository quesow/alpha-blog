(($) ->
  isActive = myFunc: (param) ->
    if $(param).hasClass("is-active")
      $(param).removeClass("is-active")
    else
      $(param).addClass("is-active")

    return

  $(document).on 'turbolinks:load', () ->
    $('#navbarMenuHeroC-trigger').click ->
      isActive.myFunc('#navbarMenuHeroC')
      return

    $('#navBar-trigger').click ->
      isActive.myFunc('#navBar')
      return
  return
) jQuery
