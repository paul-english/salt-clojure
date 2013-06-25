include:
  - jvm

clojure_pkgs:
  pkg.installed:
    - names:
      - clojure

lein_repo:
  git.latest:
    - name: https://github.com/technomancy/leiningen.git
    - target: /usr/src/leiningen
    - rev: stable

lein_bin:
  cmd.run:
    - name: cp /usr/src/leiningen/bin/lein /usr/bin/lein
    - require:
      - git: lein_repo
