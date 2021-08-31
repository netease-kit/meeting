package com.netease.yunxin.meeting.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;

import java.io.File;

import androidx.core.content.FileProvider;

/**
 *
 */

public class FileProviderUtil {
    
    public static Uri getUriForFile(Context context, File file) {
        if (Build.VERSION.SDK_INT > Build.VERSION_CODES.M) {
            String authority = context.getPackageName() + ".provider";
            return FileProvider.getUriForFile(context.getApplicationContext(), authority, file);
        }
        return Uri.fromFile(file);
    }
}
