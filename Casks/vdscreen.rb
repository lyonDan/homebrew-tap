cask "vdscreen" do
  version "1.3.3"
  sha256 "1b20653d3af38c4d1c04b807ff7b0fd337c36017bcd58e8abcdff29d368d561b"

  url "https://github.com/lyonDan/vdscreen/releases/download/v1.3.3/VDScreenBar-1.3.3-arm64.zip"
  name "VDScreenBar"
  desc "Create HiDPI virtual displays on macOS (CLI and menu bar app)"
  homepage "https://github.com/lyonDan/vdscreen"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "VDScreenBar.app"
  binary "#{appdir}/VDScreenBar.app/Contents/Resources/vdscreen"
end
