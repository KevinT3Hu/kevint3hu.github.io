bundle exec jekyll build --config _config.yml
Write-Output "Build complete"
Set-Location _site
git add *
git commit -m "Update"
git push origin main
Write-Output "Done"
Set-Location ../