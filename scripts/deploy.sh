#!/bin/bash

cd /home/ubuntu/voo_system || exit

echo "🛑 Stopping old containers..."
docker compose down

echo "🚀 Pulling latest changes..."
git pull origin master

echo "🔁 Rebuilding and restarting..."
docker compose up -d --build

echo "✅ Deployment finished successfully."
