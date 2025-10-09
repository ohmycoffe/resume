.PHONY: build-site serve-site docker-build-image docker-serve-site docker-build-site

# Build the site
build-site:
	@echo "Building Jekyll site..."
	bundle exec jekyll build
	@echo "✅ Site built successfully!"

# Start development server
serve-site:
	@echo "Starting Jekyll server at http://localhost:4000"
	bundle exec jekyll serve --port 4000 --watch

# Docker commands
docker-build-image:
	@echo "Building Docker image..."
	docker build -t jekyll-resume .
	@echo "✅ Docker image built successfully!"

docker-serve-site:
	@echo "Starting Jekyll server with Docker at http://localhost:4000"
	docker run -it --rm -p 4000:4000 -v $$(pwd):/app --name jekyll-resume-container jekyll-resume

docker-build-site:
	@echo "Building Jekyll site with Docker..."
	docker run --rm -v $$(pwd):/app jekyll-resume build
	@echo "✅ Site built successfully with Docker!"