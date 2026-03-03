class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.2/kra_v0.1.2_macos_arm64.tar.gz"
      sha256 "29bccd1ec52af86b81981162cfe89df371a651cd86ee2c67c9d64d7733fee339"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.2/kra_v0.1.2_macos_x64.tar.gz"
      sha256 "a3ed3c5ff8995d0fa80150b93293b9afb335b467bf71f9e2cbd18b15ac03cb7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.2/kra_v0.1.2_linux_arm64.tar.gz"
      sha256 "dbd9977dd46c6c35ea9625291eb131a6d116cf59fe321c49b56359e61497a4f0"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.2/kra_v0.1.2_linux_x64.tar.gz"
      sha256 "9f7ca1194f651e0704bd5a2367a4bab6ab8762c811ddc9fb6827799ffa5fecd7"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
