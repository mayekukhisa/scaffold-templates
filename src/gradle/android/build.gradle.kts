import com.diffplug.spotless.extra.wtp.EclipseWtpFormatterStep

plugins {
  alias(libs.plugins.android.application) apply false
  alias(libs.plugins.kotlin.android) apply false
  alias(libs.plugins.kotlin.compose) apply false
  alias(libs.plugins.diffplug.spotless)
}

spotless {
  mapOf("ktlint_function_naming_ignore_when_annotated_with" to "Composable").let { config ->
    with(rootProject.file("spotless/kotlin-header.txt")) {
      kotlin {
        target("**/*.kt")
        targetExclude("**/build/**/*.kt")
        ktlint().editorConfigOverride(config)
        licenseHeaderFile(this@with).updateYearWithLatest(true)
      }

      kotlinGradle {
        target("**/*.kts")
        targetExclude("**/build/**/*.kts")
        ktlint().editorConfigOverride(config)
        licenseHeaderFile(this@with, "^(?![\\/ ]\\*).").updateYearWithLatest(true)
      }
    }
  }

  format("Xml") {
    target("**/*.xml")
    targetExclude("**/build/**/*.xml", ".idea/**/*.xml")
    eclipseWtp(EclipseWtpFormatterStep.XML).configFile(
      rootProject.file("spotless/xml-config.prefs"),
    )
    licenseHeaderFile(rootProject.file("spotless/xml-header.txt"), "^<[^!?]").updateYearWithLatest(true)
  }

  with(rootProject.file("spotless/prettier-config.json")) {
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
