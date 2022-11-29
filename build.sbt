organization := "com.codacy"

name := "codacy-swiftlint"

scalaVersion := "2.13.10"

enablePlugins(GraalVMNativeImagePlugin)

libraryDependencies ++= Seq(
  "com.codacy" %% "codacy-engine-scala-seed" % "5.0.1",
  "org.scalameta" %% "svm-subs" % "20.2.0"
)

graalVMNativeImageGraalVersion := Some("21.0.0")
graalVMNativeImageOptions ++= Seq(
  "-O1",
  "-H:+ReportExceptionStackTraces",
  "--no-fallback",
  "--no-server",
  "--report-unsupported-elements-at-runtime",
  "--static"
)
