package com.example.agc_flutter_crash

import android.content.Context
import com.huawei.agconnect.crash.AGConnectCrash

class AgcFlutterService {
    fun enableCrash(enable: Boolean){
        AGConnectCrash.getInstance().enableCrashCollection(enable)
    }

    fun testCrash(context: Context) {
        AGConnectCrash.getInstance().testIt(context)
    }
}