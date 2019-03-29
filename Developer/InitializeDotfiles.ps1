# TODO: define a git submodule instead?
git clone git@github.com:gmacster/dotfiles.git

function Copy-File($src, $dst) {
    Copy-Item $src -Destination
}

Write-Output "Copying dotfiles to $env:HOME..."

$dotfiles = Get-ChildItem "dotfiles"

foreach ($file in $dotfiles) {
    $destination = Join-Path $env:HOME $file.Name
    if (Test-Path $destination) {
        $answer = Read-Host "$file already exists in $env:HOME. Overwrite it (y/n)?"
        if ($answer -eq "y") {
            Copy-Item $file.FullName -Destination $destination
        }
    } else {
        Copy-Item $file.FullName -Destination $destination
    }
}

Remove-Item "dotfiles" -Recurse -Force
