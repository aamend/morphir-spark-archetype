# Morphir Spark Archetype

*This project was created to make development of [Morphir](https://morphir.finos.org/) applications easier 
using [maven archetypes](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html). Not only we 
package ELM code to follow JVM based project best practices, but wraps morphir lifecycle to maven goals in order to
enforce CI/CD and actionable models.*

[![FINOS - Incubating](https://cdn.jsdelivr.net/gh/finos/contrib-toolbox@master/images/badge-incubating.svg)](https://finosfoundation.atlassian.net/wiki/display/FINOS/Incubating)
[![Build CI](https://github.com/aamend/morphir-spark-archetype/workflows/Test/badge.svg)]()
[![Maven Central](https://img.shields.io/maven-central/v/org.finos.morphir/morphir-spark-archetype.svg)](http://search.maven.org/#search%7Cga%7C1%7Ca%3A%22morphir-spark-archetype)

## Compile

```shell
mvn clean install
```

## Release

```shell
mvn release:prepare
mvn release:perform
```

This will publish our archetype to maven central, hence accessible as an official maven package.

## Usage

```shell
mvn archetype:generate \
  -DarchetypeGroupId=org.finos.morphir \
  -DarchetypeArtifactId=morphir-spark-archetype \
  -DarchetypeVersion=1.0-SNAPSHOT \
  -DgroupId=com.aamend.morphir \
  -DartifactId=reporting \
  [-DmorphirVersion=18.1.0]
```

This command will generate a new morphir project `reporting` under group `com.aamend.morphir`. This project will be
compiled / tested / packaged using standard maven operations (provided native morphir-elm library installed and 
available on path - see below)

### Generated project

The project generated from this archetype (`com.aamend.morphir:reporting:1.0-SNAPSHOT`) will be maven compatible and as
such will comply with the following commands

- `mvn package`: compile *.elm code to scala (spark) and scala to byte code (packaged as a jar)
- `mvn test`: runs unit tests expressed as `morphir-tests.json` (skipped if no file is found)
- `mvn install`: deploy generated jar `com.aamend.morphir_reporting_1.0-SNAPSHOT.jar` to local `~/.m2`
- `mvn deploy`: deploy generated jar to target `<repository>`
- `mvn release`: leverage maven release plugins (if specified) to release a new spark ready package
- etc.

Note that these maven commands will be executed conditional to npm and native morphir-elm dependencies to be available

```shell
sudo apt-get -y -q install npm
npm install -g morphir-elm
```

## Author

Databricks, Inc.

## License

Copyright 2022 Databricks, Inc.

Distributed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

SPDX-License-Identifier: [Apache-2.0](https://spdx.org/licenses/Apache-2.0)