onmount('[role~="nav-toggle"]', function () {
  const icon = $(this)
  const listIcon = $('[role~="list-icon"')
  const menu = $('[role~="sidebar-menu"')
  const overlay = $('[role~="sidebar-overlay"')

  icon.on('click', function() {
    menu.toggleClass('-show')
    overlay.toggleClass('-show')
    listIcon.toggleClass('-triggered')
  })

  overlay.on('click', function() {
    menu.toggleClass('-show')
    overlay.toggleClass('-show')
    listIcon.toggleClass('-triggered')
  })

})
