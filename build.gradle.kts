/*
 * Copyright 2024 Mayeku Khisa
 *
 * Use of this source code is governed by a MIT license as appearing in the
 * LICENSE file included in the root of this source tree.
 */
plugins {
   distribution
   alias(libs.plugins.diffplug.spotless)
}

spotless {
   kotlinGradle {
      target("**/*.kts")
      targetExclude("**/build/**/*.kts")
      ktlint()
      licenseHeaderFile(rootProject.file("spotless/copyright/kotlin.txt"), "^(?![\\/ ]\\*).").updateYearWithLatest(true)
   }

   with(rootProject.file("spotless/config/prettierrc.json")) {
      json {
         target("**/*.json")
         targetExclude("**/build/**/*.json")
         prettier().configFile(this@with)
      }

      format("Markdown") {
         target("**/*.md")
         targetExclude("**/build/**/*.md")
         prettier().configFile(this@with)
      }

      format("Yaml") {
         target("**/*.yml")
         targetExclude("**/build/**/*.yml")
         prettier().configFile(this@with)
      }
   }

   format("FreeMarker") {
      target("**/src/**/*.ftl")
      licenseHeaderFile(rootProject.file("spotless/copyright/freemarker.txt"), "^(?!<#| ~| -).")
         .updateYearWithLatest(true)
   }
}

repositories {
   mavenCentral()
}

version = "0.1.0"

distributions {
   main {
      contents {
         from(".") {
            include("src/**", "catalog.json")
         }
      }
   }
}

tasks {
   named<Tar>("distTar") {
      compression = Compression.GZIP
      archiveExtension.set("tar.gz")
   }
}
