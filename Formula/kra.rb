class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.2.0/kra_v0.2.0_macos_arm64.tar.gz"
      sha256 "54b35613120b7c842caaea6627ee54ec3753fa3920a8c586a84729425263a921"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.2.0/kra_v0.2.0_macos_x64.tar.gz"
      sha256 "b613b3ec2f0916e97e05e798f9ed31a583d6ff68ea04ce064a92f14aee13ff5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.2.0/kra_v0.2.0_linux_arm64.tar.gz"
      sha256 "8fe872131e9f8c8752abe69fa0ec582e1fcfcd58217f47505a06115e711fd8ba"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.2.0/kra_v0.2.0_linux_x64.tar.gz"
      sha256 "bbd662b4876d86c38e51528f054ef19a42a8dc94729a05bdc02ad9d7c2175089"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
