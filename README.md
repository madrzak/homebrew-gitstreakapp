
1. Package binary  into a Homebrew-friendly .zip
ditto -c -k --sequesterRsrc --keepParent ConvertFast.app ConvertFast-1.0.1.zip

2. To get the new sha256 hash:
shasum -a 256 ConvertFast-1.0.1.zip
