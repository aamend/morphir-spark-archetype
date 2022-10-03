# Morphir Spark Archetype

This project was created to make development of [Morphir](https://morphir.finos.org/) applications easier 
using [maven archetypes](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html). Not only we 
package ELM code to follow JVM based project best practices, but wraps morphir lifecycle to maven goals in order to
enforce CI/CD.

## Compile

```shell
mvn clean install
```

## Usage

```shell
mvn archetype:generate \
  -DarchetypeGroupId=com.databricks.labs.archetypes \
  -DarchetypeArtifactId=morphir-spark \
  -DarchetypeVersion=1.0-SNAPSHOT \
  -DgroupId=com.aamend.morphir \
  -DartifactId=morphir-lcr -B
```

This command will generate a new morphir project `morphir-lcr` under group `com.aamend.morphir`. This project will be
compiled / tested / packaged using standard maven operations (provided morphir-elm library installed)

## Install Morphir-Elm

```shell
sudo apt-get -y -q install npm
npm install -g morphir-elm
```
