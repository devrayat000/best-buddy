# PowerShell script to generate keystore and setup GitHub secrets
# Run this script to create your app signing keystore

Write-Host "🔐 Setting up App Signing for YTS Movies" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

# Check if keytool is available
try {
    $keytoolVersion = & keytool -help 2>$null
    Write-Host "✅ Java keytool found" -ForegroundColor Green
}
catch {
    Write-Host "❌ Java keytool not found. Please install Java JDK first." -ForegroundColor Red
    exit 1
}

# Create keystore directory if it doesn't exist
$keystoreDir = "android"
if (!(Test-Path $keystoreDir)) {
    New-Item -ItemType Directory -Path $keystoreDir
}

# Keystore configuration
$keystorePath = "android/upload-keystore.jks"
$keyAlias = "upload"
$storePassword = Read-Host -Prompt "Enter keystore password (remember this!)" -AsSecureString
$keyPassword = Read-Host -Prompt "Enter key password (can be same as keystore password)" -AsSecureString

# Convert secure strings to plain text for keytool
$storePasswordPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($storePassword))
$keyPasswordPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($keyPassword))

Write-Host "`n📝 Please provide the following information for your certificate:" -ForegroundColor Yellow
$firstName = Read-Host "First Name"
$lastName = Read-Host "Last Name"
$organization = Read-Host "Organization (e.g., Your Company Name)"
$organizationUnit = Read-Host "Organization Unit (e.g., Development Team)"
$city = Read-Host "City"
$state = Read-Host "State/Province"
$country = Read-Host "Country Code (2 letters, e.g., US)"

# Create distinguished name
$dname = "CN=$firstName $lastName, OU=$organizationUnit, O=$organization, L=$city, ST=$state, C=$country"

Write-Host "`n🔨 Generating keystore..." -ForegroundColor Yellow

# Generate keystore
$keytoolArgs = @(
    "-genkey"
    "-v"
    "-keystore", $keystorePath
    "-alias", $keyAlias
    "-keyalg", "RSA"
    "-keysize", "2048"
    "-validity", "10000"
    "-storepass", $storePasswordPlain
    "-keypass", $keyPasswordPlain
    "-dname", $dname
)

try {
    & keytool @keytoolArgs
    Write-Host "✅ Keystore generated successfully at: $keystorePath" -ForegroundColor Green
}
catch {
    Write-Host "❌ Failed to generate keystore: $_" -ForegroundColor Red
    exit 1
}

# Create key.properties file
$keyPropertiesContent = @"
storePassword=$storePasswordPlain
keyPassword=$keyPasswordPlain
keyAlias=$keyAlias
storeFile=../upload-keystore.jks
"@

$keyPropertiesContent | Out-File -FilePath "android/key.properties" -Encoding UTF8
Write-Host "✅ Key properties file created" -ForegroundColor Green

# Generate base64 encoded keystore for GitHub secrets
Write-Host "`n🔑 Generating GitHub Secrets..." -ForegroundColor Yellow

$keystoreBytes = [System.IO.File]::ReadAllBytes((Resolve-Path $keystorePath))
$keystoreBase64 = [System.Convert]::ToBase64String($keystoreBytes)

Write-Host "`n📋 GitHub Secrets to add:" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host "Go to your GitHub repository > Settings > Secrets and variables > Actions" -ForegroundColor Yellow
Write-Host "`nAdd these repository secrets:" -ForegroundColor Yellow

Write-Host "`n1. Secret Name: KEYSTORE_BASE64" -ForegroundColor White
Write-Host "   Secret Value:" -ForegroundColor White
Write-Host $keystoreBase64 -ForegroundColor Gray

Write-Host "`n2. Secret Name: KEY_PROPERTIES" -ForegroundColor White
Write-Host "   Secret Value:" -ForegroundColor White
Write-Host $keyPropertiesContent -ForegroundColor Gray

Write-Host "`n🎉 Setup Complete!" -ForegroundColor Green
Write-Host "==================" -ForegroundColor Green
Write-Host "1. ✅ Keystore generated: $keystorePath" -ForegroundColor Green
Write-Host "2. ✅ Key properties created: android/key.properties" -ForegroundColor Green
Write-Host "3. ✅ GitHub secrets ready to be added" -ForegroundColor Green
Write-Host "`n⚠️  IMPORTANT:" -ForegroundColor Red
Write-Host "   - Keep your keystore and passwords safe!" -ForegroundColor Red
Write-Host "   - Add the secrets to GitHub repository settings" -ForegroundColor Red
Write-Host "   - The keystore and key.properties are already in .gitignore" -ForegroundColor Red

Write-Host "`n🚀 Next steps:" -ForegroundColor Yellow
Write-Host "1. Add the GitHub secrets as shown above" -ForegroundColor White
Write-Host "2. Create a pull request to the 'prod' branch" -ForegroundColor White
Write-Host "3. Your APK will be built with proper signing!" -ForegroundColor White
