Workarea.configure do |config|
  config.seeds.insert_after("Workarea::SystemContentSeeds", "Workarea::ThemeHomePageSeeds")
  config.seeds.insert_after("Workarea::SystemContentSeeds", "Workarea::ThemeLayoutContentSeeds")
  config.seeds.insert_after("Workarea::SystemContentSeeds", "Workarea::ContentBlockPageSeeds")
end
