jQuery ->
	$('a[href^="#"]').click ->
		# Récupère l'attribut href du lien cliqué
    the_id = $(this).attr("href")

    # Enlève la classe sélectionnée pour les liens et remet tous les titres en noir
    $("#menu > li").removeClass("selected")
    $(this).parent().addClass("selected")
    $("a.section-title").css('color','#000')

    # Trouve la section en section, met le titre en rouge, détermine sa position et fait scroller la page jusque là
    section = $("a[name=#{the_id}]")
    section.css('color', '#5F04B4')
    position = section.offset().top
    $('html, body').animate
    	scrollTop: position
    	'slow'