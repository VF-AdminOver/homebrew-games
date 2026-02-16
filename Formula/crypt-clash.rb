class CryptClash < Formula
  include Language::Python::Virtualenv

  desc "Terminal RPG adventure game"
  homepage "https://github.com/VF-AdminOver/Crpyt-Clash"
  url "https://github.com/VF-AdminOver/Crpyt-Clash/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6e93acd149dc75391e65d8c19a4f76f75988b989cafea6aa9fa18b0be464ac69"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/cryptclash tip")
    assert_match "Tip:", output
  end
end
