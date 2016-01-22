import sbt._
import Keys._

object BuildSettings {
   val buildOrganization = "berkeley"
   val buildVersion = "1.0"
   val buildScalaVersion = "2.9.2"

  def apply(projectdir: String, srcdir: String) = {
    Defaults.defaultSettings ++ Seq (
      organization := buildOrganization,
      version      := buildVersion,
      scalaVersion := buildScalaVersion,
      scalaSource in Compile := Path.absolute(file(projectdir + "/src/" + srcdir)),
      libraryDependencies += "edu.berkeley.cs" %% "chisel" % "1.0.8"
    )
  }
}

object ChiselBuild extends Build{
   import BuildSettings._
   lazy val common = Project("common", file("common"), settings = BuildSettings("..", "common"))
   lazy val rv32_1stage = Project("rv32_1stage", file("rv32_1stage"), settings = BuildSettings("..", "rv32_1stage")) dependsOn(common)
   lazy val rv32_2stage = Project("rv32_2stage", file("rv32_2stage"), settings = BuildSettings("..", "rv32_2stage")) dependsOn(common)
   lazy val rv32_ucode  = Project("rv32_ucode", file("rv32_ucode"), settings = BuildSettings("..", "rv32_ucode")) dependsOn(common)
      System.setProperty("CHISEL_VERILOG_ROOT","../vlsi");
}
