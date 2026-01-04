# deploy_helper.ps1

Write-Host "========================================="
Write-Host "  Matsuyama Adult Trip - GitHub Deploy   "
Write-Host "========================================="
Write-Host ""
Write-Host "Step 1: Go to https://github.com/new"
Write-Host "Step 2: Create a new repository (e.g., 'matsuyama-trip')"
Write-Host "Step 3: Copy the HTTPS URL (e.g., https://github.com/yourname/matsuyama-trip.git)"
Write-Host ""

$repoUrl = Read-Host "Paste the Repository URL here"

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "Error: URL cannot be empty." -ForegroundColor Red
    exit
}

Write-Host "Adding remote origin..."
git remote add origin $repoUrl

Write-Host "Renaming branch to main..."
git branch -M main

Write-Host "Pushing code to GitHub..."
git push -u origin main

Write-Host ""
Write-Host "========================================="
Write-Host "  Upload Complete!"
Write-Host "========================================="
Write-Host "Final Step:"
Write-Host "1. Go to your Repository Settings > Pages"
Write-Host "2. Set 'Source' to 'Deploy from a branch'"
Write-Host "3. Set 'Branch' to 'main' / 'root'"
Write-Host "4. Click Save. Your URL will appear shortly!"
Write-Host "========================================="
Pause
