{ pkgs ? import <nixpkgs> { }
, python3Packages ? pkgs.python3Packages
}:
python3Packages.buildPythonPackage {
  pname = "pelican-podcast-feed";
  version = "0.0.0";

  dependencies = with python3Packages; [
    feedgenerator
    htmlmin
    jinja2
    markupsafe
    pelican
    six
  ];

  src = pkgs.lib.cleanSource ./.;

  pyproject = false;
  installPhase = ''
    mkdir -p $out/${python3Packages.python.sitePackages}
    cp pelican_podcast_feed.py $out/${python3Packages.python.sitePackages}/
  '';
}
