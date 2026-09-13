package com.example.shatl_mod_loader

import android.os.Bundle
import android.view.WindowInsets
import android.view.WindowMetrics
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "shatl_mod_loader/screen"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->

            when (call.method) {
                "getScreenInfo" -> {
                    result.success(getScreenInfo())
                }

                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun getScreenInfo(): Map<String, Any> {
        val displayMetrics = resources.displayMetrics

        val density = displayMetrics.density

        // Android 12+ 推荐使用 WindowMetrics
        val windowManager = getSystemService(WINDOW_SERVICE)
            as android.view.WindowManager

        val bounds = windowManager.currentWindowMetrics.bounds

        val physicalWidth = bounds.width()
        val physicalHeight = bounds.height()

        val insets = windowManager.currentWindowMetrics
            .windowInsets

        val systemBars = insets.getInsets(
            WindowInsets.Type.systemBars()
        )

        val statusBarHeight = systemBars.top

        val navigationBarHeight = systemBars.bottom

        val availableWidth =
            physicalWidth -
                systemBars.left -
                systemBars.right

        val availableHeight =
            physicalHeight -
                systemBars.top -
                systemBars.bottom

        return mapOf(
            "physicalWidth" to physicalWidth,
            "physicalHeight" to physicalHeight,

            "density" to density,

            "statusBarHeight" to statusBarHeight,
            "navigationBarHeight" to navigationBarHeight,

            "availableWidth" to availableWidth,
            "availableHeight" to availableHeight,
        )
    }
}