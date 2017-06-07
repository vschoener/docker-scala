lazy val commonSettings = Seq(
  organization := "wonderstream.tv",
  version := "0.1.0",
  scalaVersion := "2.12.2"
)

// define ModuleID for library dependencies
lazy val scalacheck = "org.scalacheck" %% "scalacheck" % "1.13.4"

lazy val root = (project in file("."))
    .settings(
        commonSettings,
        scalaSource in Compile := baseDirectory.value / "src",
        scalaSource in Test := baseDirectory.value / "test",
        libraryDependencies += scalacheck % Test,
        resolvers += "Spark Packages Repo" at "https://dl.bintray.com/spark-packages/maven",
        libraryDependencies += "datastax" % "spark-cassandra-connector" % "2.0.1-s_2.11"
    )