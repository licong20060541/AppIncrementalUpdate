package com.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;

import java.io.File;

/**
 * Created by licong12 on 2019/7/4.
 */

public class BsPatch {

    static {
        System.loadLibrary("exbsdiff");
    }

    public static native int exbspatch(String oldApk, String newApk, String patch);

    private static boolean isTest = false;

    private static String newPath = "/mnt/sdcard/dest.apk";
    private static String patchPath = "/mnt/sdcard/old-to-new.patch";

    public static void doTest(Context context) {
        if (isTest) {
            isTest = false;
            String oldPath = extract(context);
            if (new File(oldPath).exists() && new File(patchPath).exists()) {
                exbspatch(oldPath, newPath, patchPath);
                if (new File(newPath).exists()) {
//                    LogUtils.d("pppppppppppppppppp");
//                    UpdateUtils.installForLingDuEx(newPath);
                }
            }
        }
    }

    public static String extract(Context context) {
        context = context.getApplicationContext();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String apkPath = applicationInfo.sourceDir;
        Log.e("XIAN", "=============extract: " + apkPath);
        return apkPath;
    }

}
