onmount('[role~="nav-open"]', function () {
  const iconOpen = $(this)
  const iconClose = $('[role~="nav-close"')
  const menu = $('[role~="sidebar-menu"')
  const overlay = $('[role~="sidebar-overlay"')

  iconOpen.on('click', function() {
    menu.addClass('-show')
    overlay.toggleClass('-show')
  })

  iconClose.on('click', function() {
    menu.removeClass('-show')
    overlay.toggleClass('-show')
  })

  overlay.on('click', function() {
    menu.removeClass('-show')
    overlay.toggleClass('-show')
  })
})
