$ ->
  $('.portifolio-card').on 'click', (e) ->
    id = "#item-" + $(this).data("id");
    $(".active").removeClass("active")
    $(id).addClass("active")

    indicatorsID = "#indicators-" + $(this).data("id")
    $(indicatorsID).addClass("active")