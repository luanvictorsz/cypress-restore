
Write-Host "Removendo cash antigo..."
$cachePath = "$env:LOCALAPPDATA\Cypress"

if (Test-Path $cachePath) {
    Remove-Item -Recurse -Force $cachePath
    Write-Host "Cache removido com sucesso."
} else {
    Write-Host "Nenhum cache encontrado."
}

Write-Host "Reinstalando Cypress no projeto..."
npm install cypress --save-dev

Write-Host "Instalando binário do Cypress..."
npx cypress install

Write-Host "Abrindo Cypress..."
npx cypress open
