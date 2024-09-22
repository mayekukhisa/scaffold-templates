<#--
 ~ Copyright 2024 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
plugins {
   application
   alias(libs.plugins.kotlin.jvm)
   alias(libs.plugins.diffplug.spotless)
}

kotlin {
   jvmToolchain(17)
}

spotless {
   with(rootProject.file("spotless/headers/kotlin.txt")) {
      kotlin {
         target("**/*.kt")
         targetExclude("**/build/**/*.kt")
         ktlint()
         licenseHeaderFile(this@with).updateYearWithLatest(true)
      }

      kotlinGradle {
         target("**/*.kts")
         targetExclude("**/build/**/*.kts")
         ktlint()
         licenseHeaderFile(this@with, "^(?![\\/ ]\\*).").updateYearWithLatest(true)
      }
   }

   with(rootProject.file("spotless/configs/prettierrc.json")) {
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
}

repositories {
   mavenCentral()
}

dependencies {
   testImplementation(libs.kotlin.test)
}

group = "${packageName}"
version = "0.1.0"

application {
   mainClass.set("${r"${"}project.group}.MainKt")
}

tasks {
   named<Test>("test") {
      useJUnitPlatform()
   }
}
