.PHONY: build serve

# Build the site
build:
	@echo "Building Jekyll site..."
	bundle exec jekyll build
	@echo "✅ Site built successfully!"

# Start development server
serve:
	@echo "Starting Jekyll server at http://localhost:4000"
	bundle exec jekyll serve --port 4000 --watch