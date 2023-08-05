package com.platzitrips.app.platzi_trips_app

import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import android.os.Bundle
import androidx.annotation.RequiresApi

class MainActivity : FlutterActivity() {
    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.statusBarColor = android.graphics.Color.TRANSPARENT
        // Aquí puedes agregar cualquier código que desees ejecutar al crear la actividad
        //Lo corregi en android
    }
}
