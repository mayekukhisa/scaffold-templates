<#--
 ~ Copyright 2024-2025 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
package ${packageName}

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import ${packageName}.ui.theme.AppTheme

class MainActivity : ComponentActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    enableEdgeToEdge()
    setContent {
      AppTheme {
        MainScreen()
      }
    }
  }
}

@Composable
fun MainScreen() {
  Scaffold { scaffoldInsets ->
    Box(
      modifier = Modifier
        .padding(scaffoldInsets)
        .fillMaxSize()
        .padding(16.dp),
      contentAlignment = Alignment.Center,
    ) {
      Text(
        text = stringResource(R.string.app_name),
        style = MaterialTheme.typography.headlineMedium,
        textAlign = TextAlign.Center,
      )
    }
  }
}

@Preview(showBackground = true)
@Composable
private fun MainScreenPreview() {
  AppTheme {
    MainScreen()
  }
}
