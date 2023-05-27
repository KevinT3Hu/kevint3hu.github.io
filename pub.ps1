# parse arguments: -m "commit message"
$arguments = $args
$commitMessage = "Update"
$build = $false
for ($i = 0; $i -lt $arguments.Length; $i++) {
    if ($arguments[$i] -eq "-m") {
        $commitMessage = $arguments[$i + 1]
    }
    if ($arguments[$i] -eq "-b") {
        $build = $true
    }
}
if ($build) {
    bundle exec jekyll build --config _config.yml
    Write-Output "Build complete"
    Set-Location _site
    git add *
    git commit -m "$commitMessage"
    Set-Location ../
}

Set-Location _site
git push origin main
Write-Output "Done"
Set-Location ../