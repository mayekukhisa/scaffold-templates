/*
 * Copyright 2024-2025 Mayeku Khisa
 *
 * Use of this source code is governed by a MIT license as appearing in the
 * LICENSE file included in the root of this source tree.
 */
import com.diffplug.spotless.extra.wtp.EclipseWtpFormatterStep

plugins {
  distribution
  alias(libs.plugins.diffplug.spotless)
}

spotless {
  kotlinGradle {
    target("**/*.kts")
    targetExclude("**/build/**/*.kts", "**/src/**/*.kts")
    ktlint()
    licenseHeaderFile(rootProject.file("spotless/kotlin-header.txt"), "^(?![\\/ ]\\*).").updateYearWithLatest(true)
  }

  with(rootProject.file("spotless/prettier-config.json")) {
    javascript {
      target("src/**/*.mjs")
      prettier().configFile(this@with)
    }

    json {
      target("**/*.json")
      targetExclude("**/build/**/*.json")
      prettier().configFile(this@with)
    }

    typescript {
      target("src/**/*.ts", "src/**/*.tsx")
      prettier().configFile(this@with)
    }

    format("Css") {
      target("src/**/*.css")
      prettier().configFile(this@with)
    }

    format("Markdown") {
      target("**/*.md")
      targetExclude("/CHANGELOG.md", "**/build/**/*.md")
      prettier().configFile(this@with)
    }

    format("Yaml") {
      target("**/*.yml")
      targetExclude("**/build/**/*.yml")
      prettier().configFile(this@with)
    }
  }

  format("FreeMarker") {
    target("src/**/*.ftl")
    licenseHeaderFile(rootProject.file("spotless/freemarker-header.txt"), "^(?!<#--|\\s*?~|\\s*?-).")
      .updateYearWithLatest(true)
  }

  format("Xml") {
    target("src/**/*.xml")
    eclipseWtp(EclipseWtpFormatterStep.XML).configFile(
      rootProject.file("spotless/xml-config.prefs"),
    )
  }

  shell {
    target("scripts/**/*.sh")
    shfmt("3.10.0")
    licenseHeaderFile(rootProject.file("spotless/shell-header.txt"), "^(?!#!|#).")
      .updateYearWithLatest(true)
  }
}

repositories {
  mavenCentral()
}

version = rootProject.file("version.txt").readText().trim()

distributions {
  main {
    contents {
      from(".") {
        include("src/**", "catalog.json", "LICENSE", "version.txt")
      }
    }
  }
}

tasks {
  named<Tar>("distTar") {
    compression = Compression.GZIP
    archiveExtension.set("tar.gz")
  }

  register<Exec>("test") {
    group = "verification"
    description = "Runs the test suite"
    commandLine("bash", "scripts/run-tests.sh")
  }

  named("build") {
    dependsOn("test")
  }
}
