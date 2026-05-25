class Tgrc < Formula
  desc "Telegram CLI for reading messages from the terminal"
  homepage "https://github.com/jakshi/telegram-rust-cli"
  version "0.2.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jakshi/telegram-rust-cli/releases/download/v0.2.0/tgrc-arm64-apple-darwin.tar.gz"
      sha256 "a23f77bb0209e47eb044ec84e234d35ee5d0d12dc7b8d80156ea0af94578e646"
    else
      url "https://github.com/jakshi/telegram-rust-cli/releases/download/v0.2.0/tgrc-x86_64-apple-darwin.tar.gz"
      sha256 "5a298fedc7fad368236ab582d29510c9dda630461e1f7d8ac1b4e633f747788c"
    end
  end

  def install
    bin.install "tgrc"
  end

  test do
    assert_match "tgrc", shell_output("#{bin}/tgrc --help")
  end
end
