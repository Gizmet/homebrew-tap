class Ghstats < Formula
  desc "GitHub contribution heatmap viewer for terminal"
  homepage "https://github.com/Gizmet/github-contribution-heatmap-viewer"
  url "https://github.com/Gizmet/github-contribution-heatmap-viewer/archive/v1.0.0.tar.gz"
  sha256 "12c92eb0906673bd1307c335ba4d5b1a79407663d3b797f93f78d0569486c983"
  license "MIT"
  head "https://github.com/Gizmet/github-contribution-heatmap-viewer.git", branch: "master"

  depends_on "python@3.9"

  def install
    system "python3", "-m", "pip", "install", *std_pip_args, "."
  end

  test do
    system "#{bin}/ghstats", "--help"
  end
end 