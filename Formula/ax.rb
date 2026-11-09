# typed: false
# frozen_string_literal: true

# Formula template for GaryWenneker/homebrew-tap.
# Placeholders are stamped by scripts/homebrew_tap_prepare.py from release SHA256SUMS.
class Ax < Formula
  desc "Agent Xpansion — local-first code intelligence for AI agents"
  homepage "https://getax.wenneker.io"
  version "8.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GaryWenneker/ax/releases/download/v8.4.3/ax-darwin-arm64.tar.gz"
      sha256 "9cb1ebc4c22a85c3a01da2421a9d92f9682e51732416b36e17ffb37d5defa74d"
    end
    on_intel do
      url "https://github.com/GaryWenneker/ax/releases/download/v8.4.3/ax-darwin-x64.tar.gz"
      sha256 "8db78fed359e76aff9213b356a3cfa916b84242274030873c6aa460411871c3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaryWenneker/ax/releases/download/v8.4.3/ax-linux-arm64.tar.gz"
      sha256 "4e2798ff1e00d485d96e8bb1d5a21bb4763d9d8c8e90f4b7f2584ca3968889e9"
    end
    on_intel do
      url "https://github.com/GaryWenneker/ax/releases/download/v8.4.3/ax-linux-x64.tar.gz"
      sha256 "16da959606e98e2a48effa0de2f2efc1df0654b1e4faf607fac17544054bec1a"
    end
  end

  def install
    bin.install "ax"
  end

  def caveats
    <<~EOS
      ax keeps project data in each project's .ax/ directory and user data in ~/.ax/.
      Uninstalling this formula removes only the Homebrew-managed binary.

      Upgrade with Homebrew:
        brew upgrade ax

      Do not use `ax upgrade` for Homebrew installs — it refuses to overwrite
      Cellar-managed binaries so your package manager stays in control.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax version")
  end
end
