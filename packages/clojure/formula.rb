class Leiningen < DebianFormula
  homepage 'https://github.com/clojure/clojure'

  url 'https://github.com/clojure/clojure/archive/clojure-1.5.0.zip'

  arch 'all'
  name 'clojure'
  section 'devel'
  version '1.5.0+github1'
  description 'The Clojure programming language'

  depends \
    'sun-java6-jre | sun-java6-jdk | openjdk-6-jre | openjdk-7-jre',
    'rlwrap'

  def build
    FileUtils.cp('clojure-1.5.0.jar', "clojure-1.5.0+github1.jar")
  end

  def install
    (prefix/'share/java').install "clojure-1.5.0+github1.jar"
  end
end
