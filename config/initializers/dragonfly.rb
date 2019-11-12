Dragonfly.app(:workarea).configure do
  # PDP Main Image Size
  processor :detail do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "360x480")
    content.process!(:optim)
  end

  # PDP Main Image Size - retina
  processor :detail_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "720x960")
    content.process!(:optim)
  end

  # PDP Main Image Size - mobile
  processor :detail_mobile do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "255x340")
    content.process!(:optim)
  end

  # PDP Main Image Size - mobile retina
  processor :detail_mobile_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "510x680")
    content.process!(:optim)
  end

  # PDP Thumbnail Image Size
  processor :small_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "180x240")
    content.process!(:optim)
  end

  # PDP Thumbnail Image Size - retina
  processor :small_thumb_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "360x480")
    content.process!(:optim)
  end

  # Swatch Image Size
  processor :swatch_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "36x48")
    content.process!(:optim)
  end
end
