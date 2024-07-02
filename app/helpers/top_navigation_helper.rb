# frozen_string_literal: true

module TopNavigationHelper
  # Contains the details of the links found in the top navigation
  #
  # Each item is a hash containing the following keys -
  # - action - the action to determine the active link
  # - controller - the controller the link is attached to
  # - key - the unique identifier for the link
  # - svg_filename - the svg to be displayed on the button
  # - href - the path for the link
  def navigation_links
    [
      {
        action: 'index',
        controller: 'home',
        key: :index,
        svg_filename: 'pikachu',
        href: '#',
        tooltip_content: 'Home'
      },
      {
        action: 'pokedex',
        controller: 'users',
        key: :friends,
        svg_filename: 'pokedex-solid',
        href: '#',
        tooltip_content: 'Pokedex'
      },
      {
        action: 'tcg',
        controller: 'tcg',
        key: :marketplace,
        svg_filename: 'tcg-solid',
        href: '#',
        tooltip_content: 'TCG'
      },
      {
        action: 'search',
        controller: 'search',
        key: :search,
        svg_filename: 'pokeball-solid',
        href: '#',
        tooltip_content: 'Search'
      }
    ]
  end

  # Displays the SVG file
  def show_svg(path)
    File.open("app/assets/images/svg/#{path}.svg", "rb") do |file|
      raw file.read
    end
  end
end
