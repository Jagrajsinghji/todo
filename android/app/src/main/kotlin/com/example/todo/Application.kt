package com.example.todo

import io.flutter.app.FlutterApplication
import io.flutter.plugin.common.PluginRegistry
import ni.devotion.floaty_head.FloatyHeadPlugin
import ni.devotion.floaty_head.utils.Managment


class Application : FlutterApplication(), PluginRegistry.PluginRegistrantCallback {
    override fun onCreate() {
        super.onCreate()
        FloatyHeadPlugin().setPluginRegistrant(this)
        Managment.pluginRegistrantC = this
    }

    override fun registerWith(registry: PluginRegistry) {
        FloatyHeadPlugin().registerWith(registry.registrarFor(this.packageName))
    }
}
