cask "vdscreen" do
  version "1.3.4"
  sha256 "1a7cea221ebbb3035607ae4d38bd535998c0ffca3226d1857f0b51bc4e77caa8"

  url "https://github.com/lyonDan/vdscreen/releases/download/v1.3.4/VDScreenBar-1.3.4-arm64.zip"
  name "VDScreenBar"
  desc "Create HiDPI virtual displays on macOS (CLI and menu bar app)"
  homepage "https://github.com/lyonDan/vdscreen"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "VDScreenBar.app"
  binary "#{appdir}/VDScreenBar.app/Contents/Resources/vdscreen"
end
