class Vdscreen < Formula
  desc "Create HiDPI virtual displays on macOS (CLI and menu bar app)"
  homepage "https://github.com/lyonDan/vdscreen"
  version "1.2.5"
  url "https://github.com/lyonDan/vdscreen/releases/download/v1.2.5/VDScreenBar-1.2.5-arm64.zip"
  sha256 "43877caffb4152f35973c78b56a86318519cb57084d58994268075ccfbcc373c"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm

  def install
    # 直接安装 Release 预编译包（Developer ID 签名 + Apple 公证），不做本机编译
    app = "VDScreenBar.app"
    libexec.install "#{app}/Contents/Resources/vdscreen", "#{app}/Contents/Resources/vdscreen-core"
    # 用 opt 路径而非带版本号的 Cellar 路径：LaunchAgent 会记下核心路径，升级后不能失效
    (bin/"vdscreen").write <<~SH
      #!/bin/sh
      exec "#{opt_libexec}/vdscreen" "$@"
    SH
    prefix.install app
  end

  def caveats
    <<~EOS
      菜单栏 App 已安装在：
        #{opt_prefix}/VDScreenBar.app
      想要它出现在启动台 / 应用程序里：
        cp -R #{opt_prefix}/VDScreenBar.app ~/Applications/
    EOS
  end

  test do
    assert_match "vdscreen", shell_output("#{bin}/vdscreen help")
  end
end
