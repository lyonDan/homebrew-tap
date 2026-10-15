# homebrew-tap

[lyonDan/vdscreen](https://github.com/lyonDan/vdscreen) 的 Homebrew tap。

```sh
brew install --cask lyonDan/tap/vdscreen
```

App 自动安装到 `/Applications/VDScreenBar.app`，同时提供 `vdscreen` 命令行入口。
升级：`brew upgrade --cask lyonDan/tap/vdscreen`。

旧 Formula 用户请先执行 `vdscreen off` 和 `brew uninstall --formula lyonDan/tap/vdscreen`，
再安装 Cask，并执行 `vdscreen set core /Applications/VDScreenBar.app/Contents/Resources/vdscreen-core`。
配置与预设会保留。详见[迁移说明](https://github.com/lyonDan/vdscreen#从旧-formula-迁移)。

`Casks/vdscreen.rb` 与兼容旧安装的 `Formula/vdscreen.rb` 均由主仓库发布流程在打 tag 时更新。
