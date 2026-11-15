# typed: false
# frozen_string_literal: true

class Simplefin < Formula
  desc "Read-only bank, card and loan data from SimpleFIN Bridge, as a CLI and MCP server"
  homepage "https://github.com/rgstephens/simplefin-cli"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.1.0/simplefin_1.1.0_darwin_amd64.tar.gz"
      sha256 "c5ec4306104842668acf45ddccbda1854dfdda4c97171fcea17efb641f9f63d8"

      def install
        bin.install "simplefin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.1.0/simplefin_1.1.0_darwin_arm64.tar.gz"
      sha256 "c7a2943a764ee62e191203e7725629273781a93372a2a6a596521eea711b264d"

      def install
        bin.install "simplefin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.1.0/simplefin_1.1.0_linux_amd64.tar.gz"
      sha256 "7912b82758f823f38604aae57df514f7363dff089af896b2023ba81d491270db"

      def install
        bin.install "simplefin"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.1.0/simplefin_1.1.0_linux_arm64.tar.gz"
      sha256 "14be2be6c4f412bab924294bb60facfba5ff73e9a6dc686a7d856eed2fbba42c"

      def install
        bin.install "simplefin"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/simplefin --version")
  end
end
