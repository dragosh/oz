class Zen < Formula
  desc "Simple CLI, for markdown preview"
  homepage "https://github.com/dragosh/zen"
  # url "https://github.com/dragosh/macos-zen-cli/archive/v1.0.0.tar.gz"
  # sha256 ""
  # license "Apache-2.0"

  bottle do
    root_url "https://github.com/dragosh/homebrew/releases/download/zen-1.0.0"
    sha256 cellar: :any_skip_relocation, monterey:       ""
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "zen"
    bin.install "zen"
  end
end
