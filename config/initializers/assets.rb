# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-responsive.min.css )
Rails.application.config.assets.precompile += %w( theme.css )
Rails.application.config.assets.precompile += %w( font-awesome.css )


Rails.application.config.assets.precompile += %w( jquery-1.9.1.min.js )
Rails.application.config.assets.precompile += %w( jquery-ui-1.10.1.custom.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( common.js )
Rails.application.config.assets.precompile += %w( jquery.flot.js )
Rails.application.config.assets.precompile += %w( jquery.flot.pie.js )
Rails.application.config.assets.precompile += %w( jquery.flot.resize.js )
Rails.application.config.assets.precompile += %w( jquery.dataTables.js )

