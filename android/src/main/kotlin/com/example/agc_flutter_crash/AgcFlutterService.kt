package com.example.agc_flutter_crash

import android.content.Context
import com.huawei.agconnect.crash.AGConnectCrash

class AgcFlutterService {
    fun enableCrash(enable: Boolean): Boolean {
        AGConnectCrash.getInstance().enableCrashCollection(enable)
        return true;
    }

    fun testCrash(context: Context): String {
        AGConnectCrash.getInstance().testIt(context)
        return "Done"
    }
}