Workarea.configure do |config|
  config.theme = {
    color_schemes: ["one", "workarea", "midnight"],
    color_scheme: "one",
    font_stacks: {
      roboto: '"Roboto", "HelveticaNeue", "Helvetica Neue", sans-serif',
      lora: '"Lora", "Times New Roman", "Georgia", serif',
      hind: '"Hind", Helvetica, Arial, sans-serif',
      source_serif_pro: '"Source Serif Pro", "Times New Roman", Georgia, serif',
      muli: '"Muli", Helvetica, Arial, sans-serif',
      playfair_display: '"Playfair Display", "Times New Roman", Georgia, serif'
    },
    primary_font_family: "roboto",
    secondary_font_family: "lora"
  }
end
