cask "vdscreen" do
  version "1.3.2"
  sha256 "fe260fa58db514916cee6d5bd236cc96038f945237845639da798b1cc12d56cd"

  url "https://github.com/lyonDan/vdscreen/releases/download/v1.3.2/VDScreenBar-1.3.2-arm64.zip"
  name "VDScreenBar"
  desc "Create HiDPI virtual displays on macOS (CLI and menu bar app)"
  homepage "https://github.com/lyonDan/vdscreen"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "VDScreenBar.app"
  binary "#{appdir}/VDScreenBar.app/Contents/Resources/vdscreen"
end
