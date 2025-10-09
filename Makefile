.PHONY: build serve docker-build docker-serve

# Build the site
build:
	@echo "Building Jekyll site..."
	bundle exec jekyll build
	@echo "✅ Site built successfully!"

# Start development server
serve:
	@echo "Starting Jekyll server at http://localhost:4000"
	bundle exec jekyll serve --port 4000 --watch

# Docker commands
docker-build:
	@echo "Building Docker image..."
	docker build -t jekyll-resume .
	@echo "✅ Docker image built successfully!"

docker-serve:
	@echo "Starting Jekyll server with Docker at http://localhost:4000"
	docker run -it --rm -p 4000:4000 -v $$(pwd):/app --name jekyll-resume-container jekyll-resume