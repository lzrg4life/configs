# Turn off the error sound
Set-PSReadLineOption -BellStyle None

# Show all possible completions on tab
Set-PSReadlineOption -EditMode Emacs

# Set a custom prompt
function prompt {
	$identity = [Security.Principal.WindowsIdentity]::GetCurrent()
	$principal = [Security.Principal.WindowsPrincipal] $identity
	$adminRole = [Security.Principal.WindowsBuiltInRole]::Administrator

	$(if ($$) { "`r`n" } else { '' } ) +
	'PS ' + $(Get-Location) + "`r`n" +
	$(if (Test-Path variable:/PSDebugContext) { '[DBG]: ' } else { '' }) +
	$(if ($principal.IsInRole($adminRole)) { '[ADMIN]: ' } else { '' }) +
	$(if ($NestedPromptLevel -ge 1) { '[NESTED] ' }) + '$ '
}

New-Alias -name "v" "nvim.exe"
New-Alias -name "vg" "nvim-qt.exe"
New-Alias -name "npp" "C:\Program Files\Notepad++\Notepad++.exe"
New-Alias -name "touch" "New-Item"

$nvprofiledir = "$home\AppData\Local\nvim"
$nvprofile = "$nvprofiledir\init.vim"

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
    echo $cmd
    Start-Process pwsh -Verb runAs -ArgumentList "-Command $cmd"
}
