# typed: false
# frozen_string_literal: true

class Simplefin < Formula
  desc "Read-only bank, card and loan data from SimpleFIN Bridge, as a CLI and MCP server"
  homepage "https://github.com/rgstephens/simplefin-cli"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.3.0/simplefin_1.3.0_darwin_amd64.tar.gz"
      sha256 "bf8de15ffd0c10908514997fb950ad332fb60767836b14952aaee7da2a721a97"

      def install
        bin.install "simplefin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.3.0/simplefin_1.3.0_darwin_arm64.tar.gz"
      sha256 "3867660d30c885776a4742a433456529645c4554de6a3957442ac5fe105b499a"

      def install
        bin.install "simplefin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.3.0/simplefin_1.3.0_linux_amd64.tar.gz"
      sha256 "753a9c08de902bea05d615afe886f19c2d01878f02cc529812882b77b13e198c"

      def install
        bin.install "simplefin"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/simplefin-v1.3.0/simplefin_1.3.0_linux_arm64.tar.gz"
      sha256 "fa2d7dc8632e07d1c38328a407d19491e0331a81505b9e153281f0f019145e93"

      def install
        bin.install "simplefin"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/simplefin --version")
  end
end
