function get-file {
    $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog 
    $FileBrowser.InitialDirectory = [Environment]::GetFolderPath('Desktop') 
    $FileBrowser.Filter = 'Documents (*.docx) | (*.docx)'
    $FileBrowser.Multiselect = $true
    $null = $FileBrowser.ShowDialog()
}

$file = Get-file