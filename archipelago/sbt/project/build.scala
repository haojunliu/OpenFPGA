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
    // lazy val common = Project("common", file("common"), settings = BuildSettings("..", "common"))
    // lazy val rv32_1stage = Project("rv32_1stage", file("rv32_1stage"), settings = BuildSettings("..", "rv32_1stage")) dependsOn(common)
    // lazy val rv32_2stage = Project("rv32_2stage", file("rv32_2stage"), settings = BuildSettings("..", "rv32_2stage")) dependsOn(common)
    // lazy val rv32_ucode  = Project("rv32_ucode", file("rv32_ucode"), settings = BuildSettings("..", "rv32_ucode")) dependsOn(common)
    lazy val fpga = Project("fpga", file("fpga_tile"), settings = BuildSettings("..", "of_comp"))
    lazy val lut_tile = Project("lut_tile", file("lut_tile"), settings = BuildSettings("..", "lut_tile"))
    lazy val lut_tile_sp = Project("lut_tile_sp", file("lut_tile_sp"), settings = BuildSettings("..", "lut_tile_sp"))
    lazy val io_tile_sp = Project("io_tile_sp", file("io_tile_sp"), settings = BuildSettings("..", "io_tile_sp"))
    lazy val clb = Project("clb", file("clb"), settings = BuildSettings("..", "clb"))
    lazy val Combinational = Project("Combinational", file("Combinational"), settings = BuildSettings("..", "comb"))
    lazy val ff_red = Project("ff_red", file("ff_red"), settings = BuildSettings("..", "ff_red"))
    lazy val recur = Project("recur", file("recur"), settings = BuildSettings("..", "recur"))
    System.setProperty("CHISEL_VERILOG_ROOT","../vlsi");
}
