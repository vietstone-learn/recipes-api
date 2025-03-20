#!/bin/bash

# Clean up
go clean -cache
rm -f swagger.json

# Generate swagger documentation
swagger generate spec \
  -w . \
  -o ./swagger.json \
  --scan-models \
  --include=".*" \
  --exclude=".git" \
#   --compact

# Verify the generation
if [ -f "swagger.json" ]; then
    echo "✅ Swagger documentation generated successfully"
    echo "📄 Generated swagger.json file"
else
    echo "❌ Failed to generate swagger documentation"
    exit 1
fi 