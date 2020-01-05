{ lib, fetchFromGitHub }:

fetchFromGitHub {
  name = "profont-powerline";

  owner = "mox-mox";
  repo = "profont-powerline";
  rev = "4fac6823ce9478ff3dd64fe1bceb587d2f59bab9";

  postFetch = ''
    tar xf $downloadedFile --strip=1
    find . -name '*.pcf.gz' -exec install -Dt $out/share/fonts/pcf      {} \;
  '';

  sha256 = "0drqhhwvcj7zjsliab53cccx5hl3v2zc37qn0wimqfjdxcvdzr31";

  meta = with lib; {
    homepage = https://github.com/mox-mox/profont-powerline;
    description = "A monospaced font created to be a most readable font for programming, with added powerline symbols";
    longDescription = ''
      Pre-patched and adjusted fonts for usage with the Powerline plugin.
    '';
    license = with licenses; [ asl20 free ofl ];
    platforms = platforms.all;
    maintainers = with maintainers; [ mox ];
  };
}
