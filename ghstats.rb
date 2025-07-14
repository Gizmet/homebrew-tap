class Ghstats < Formula
  desc "GitHub contribution heatmap viewer for terminal"
  homepage "https://github.com/Gizmet/github-contribution-heatmap-viewer"
  url "https://github.com/Gizmet/github-contribution-heatmap-viewer/archive/v1.0.0.tar.gz"
  sha256 "df9f51bfb4e1b001f3c795d28bae03273e1bb70e1ddcba8893bd16e763392b49"
  license "MIT"
  head "https://github.com/Gizmet/github-contribution-heatmap-viewer.git", branch: "master"

  depends_on "python@3.9"

  def install
    # Install dependencies first
    system "python3", "-m", "pip", "install", *std_pip_args, "-r", "requirements.txt"
    # Then install the package
    system "python3", "-m", "pip", "install", *std_pip_args, "."
  end

  test do
    system "#{bin}/ghstats", "--help"
  end
end 