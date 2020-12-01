# Turn off the error sound
Set-PSReadLineOption -BellStyle None

# Show all possible completions on tab
Set-PSReadlineOption -EditMode Emacs

# Set a custom prompt
function prompt {
	$identity = [Security.Principal.WindowsIdentity]::GetCurrent()
	$principal = [Security.Principal.WindowsPrincipal] $identity
	$adminRole = [Security.Principal.WindowsBuiltInRole]::Administrator

	Write-Host ("`r`nPS " + $(Get-Location) + "`r`n") -NoNewline -ForegroundColor Green
	
	if ($principal.IsInRole($adminRole)) { 
		Write-Host '[ADMIN] ' -NoNewline -ForegroundColor Blue
	}

	return "> "
}

New-alias -name "v" "nvim"
New-Alias -name "touch" "New-Item"
New-Alias -name "exp" "explorer"

function newsh {
	Start-Process pwsh
}

function newsha {
	Start-Process pwsh -Verb runAs
}

function admin($process) {
	if (!$process) {
		Write-Output "Missing process to run as admin. Use like 'admin `$processname'"
	}
	Start-Process $process -Verb runAs 
}

function symlink($link, $target) {
	if (!$link || !$target) {
		Write-Output "Missing link or target. Use like 'symlink `$link `$target'"
		return
	}
    $cmd = "New-Item -ItemType SymbolicLink -Path '$link' -Target '$target'"
    Write-Output $cmd
    Start-Process pwsh -Verb runAs -ArgumentList "-Command $cmd"
}

function UpdateProfile {
	New-Item -f $profile 
	Get-Content -path $HOME\repos\github\configs\windows\profile.ps1 -Raw | Set-Content $profile		
}