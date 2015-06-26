.class public final LbB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 14

    .prologue
    const/4 v3, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 265
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})T(\\d{2}):(\\d{2}):(\\d{2})\\.(\\d+)Z$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 269
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 270
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 277
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 280
    const-wide/16 v0, 0x0

    .line 300
    :goto_1
    return-wide v0

    .line 282
    :cond_1
    invoke-virtual {v6, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-virtual {v6, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    invoke-virtual {v6, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 286
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    invoke-virtual {v6, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    new-instance v7, Ljava/util/GregorianCalendar;

    new-instance v8, Ljava/util/SimpleTimeZone;

    const-string v9, "GMT"

    invoke-direct {v8, v13, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v10, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v11, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v12, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 294
    const/16 v0, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 295
    const/16 v0, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 296
    const/16 v0, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 297
    const/16 v0, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 299
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    .prologue
    .line 43
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 46
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, LbB;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, LbB;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 309
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 311
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%04d-%02d-%02dT%02d:%02d:%02d.000Z"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v0, v0, Landroid/text/format/Time;->second:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string v1, "000000000000000"

    .line 72
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 74
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v1, v0

    .line 78
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    :cond_3
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 91
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 102
    :goto_0
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 239
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 241
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/PowerManager$WakeLock;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)Z
    .locals 1

    .prologue
    .line 189
    if-eqz p0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 247
    if-ne p0, p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 317
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 319
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 320
    mul-long v0, v3, v1

    return-wide v0
.end method

.method private static final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, LbB;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p0}, LbB;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-static {v0, v1}, Lbs;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, LbC;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LbB;->a:Ljava/lang/String;

    .line 140
    :cond_0
    sget-object v0, LbB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, LbB;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lbs;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, LbC;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 173
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 174
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 175
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    invoke-static {p0}, LbB;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    invoke-static {}, LbB;->a()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-static {p0}, LbB;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-static {p0}, LbB;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v0, "000000000000000"

    .line 124
    :cond_2
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 145
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 151
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
