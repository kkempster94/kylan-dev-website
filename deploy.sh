#!/bin/bash

echo "🚀 GitHub Pages Deployment Helper"
echo "================================="
echo ""

# Check if GitHub CLI is installed
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI detected!"
    echo ""
    echo "Would you like me to create the repository for you? (y/n)"
    read -r create_repo
    
    if [[ $create_repo == "y" || $create_repo == "Y" ]]; then
        echo "📦 Creating GitHub repository..."
        gh repo create kylan-dev-website --public --description "AI-driven developer portfolio website" --source . --remote origin --push
        echo "✅ Repository created and code pushed!"
        echo ""
        echo "🌐 Your site will be available at:"
        echo "https://$(gh api user --jq .login).github.io/kylan-dev-website/"
        echo ""
        echo "⚙️  Now go to your repository settings to enable GitHub Pages:"
        echo "1. Go to https://github.com/$(gh api user --jq .login)/kylan-dev-website/settings/pages"
        echo "2. Under 'Source', select 'GitHub Actions'"
        echo "3. Your site will deploy automatically!"
    else
        echo "📝 Manual setup instructions:"
        echo "1. Create a new repository at https://github.com/new"
        echo "2. Name it 'kylan-dev-website'"
        echo "3. Make it public"
        echo "4. Don't initialize with README"
        echo "5. Run these commands:"
        echo ""
        echo "   git remote add origin https://github.com/YOUR_USERNAME/kylan-dev-website.git"
        echo "   git push -u origin main"
        echo ""
        echo "6. Enable GitHub Pages in repository settings"
    fi
else
    echo "❌ GitHub CLI not found"
    echo ""
    echo "Option 1: Install GitHub CLI for easier setup:"
    echo "  https://cli.github.com/"
    echo ""
    echo "Option 2: Manual setup:"
    echo "1. Create repository at https://github.com/new"
    echo "2. Name it 'kylan-dev-website' and make it public"
    echo "3. Run:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/kylan-dev-website.git"
    echo "   git push -u origin main"
    echo "4. Enable GitHub Pages in Settings > Pages > Source: GitHub Actions"
fi