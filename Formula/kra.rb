class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.5/kra_v0.3.5_macos_arm64.tar.gz"
      sha256 "dacedda8c23f32b0cdc845b7f68af05d661cdfadf650606ad4e825bc9ee98bd7"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.5/kra_v0.3.5_macos_x64.tar.gz"
      sha256 "0d15329faf8c372503e4473c738c5def7a68c3e9fa950088e13b437d0b257ece"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.5/kra_v0.3.5_linux_arm64.tar.gz"
      sha256 "d808db7d1ddd27306b5517c299d64c9cb989f3f46aca2fcc3696f8925e6c11a2"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.5/kra_v0.3.5_linux_x64.tar.gz"
      sha256 "980d265706a2c1cf7685cf7227f286af0b6384dbc802b3c3d083e16256916cd8"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
