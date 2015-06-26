.class public final Lcom/kavsdk/shared/SdkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.kdc"

    aput-object v2, v1, v4

    const-string v2, "android_x86.kdc"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "libkavheur.kdl.so"

    aput-object v2, v1, v4

    const-string v2, "libkavheur_x86.kdl.so"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "libkavsdk.so"

    aput-object v2, v1, v4

    const-string v2, "libkavsdk_x86.so"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mmh001.kdc"

    aput-object v2, v1, v4

    const-string v2, "mmh001_x86.kdc"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "mmh002.kdc"

    aput-object v2, v1, v4

    const-string v2, "mmh002_x86.kdc"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mmheur.mft"

    aput-object v3, v2, v4

    const-string v3, "mmheur_x86.mft"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mmhlnk01.kdc"

    aput-object v3, v2, v4

    const-string v3, "mmhlnk01_x86.kdc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smh001.kdc"

    aput-object v3, v2, v4

    const-string v3, "smh001_x86.kdc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smheur.mft"

    aput-object v3, v2, v4

    const-string v3, "smheur_x86.mft"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/kavsdk/shared/SdkUtils;->a:[[Ljava/lang/String;

    .line 66
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v4

    const-string v1, "jquery-1.8.0.min.js"

    aput-object v1, v0, v5

    const-string v1, "kms90.avc"

    aput-object v1, v0, v6

    const-string v1, "ksncliwin32keys.dat"

    aput-object v1, v0, v7

    const-string v1, "ksn_client2.xms"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "ksn_helper.xms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "libapk.so"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "libdvm.so"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "libemulator.so"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "libnh.so"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "libpdm.so"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pdm.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pdm.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pdm.mft"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pdm00.kdc"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pdme.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pw.j"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "smm.dat"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rootdetector.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "customization_config.xml"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "customization_config_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "certificate.crt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "httpsca.jks"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Description.xml"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "list.ksl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kavsdk/shared/SdkUtils;->b:[Ljava/lang/String;

    return-void
.end method

.method private static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p0, :cond_2

    .line 105
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 109
    :cond_2
    if-nez p1, :cond_3

    .line 110
    const/4 v0, -0x2

    goto :goto_0

    .line 112
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 113
    array-length v3, p0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p0, v1

    .line 114
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 117
    array-length v4, p1

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, p1, v1

    .line 118
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/kavsdk/shared/SdkUtils$DeviceType;
    .locals 6

    .prologue
    .line 398
    sget-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Unknown:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 399
    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 402
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    .line 403
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    .line 405
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 406
    float-to-int v4, v1

    float-to-int v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 408
    const/16 v5, 0x1b8

    if-lt v3, v5, :cond_2

    const/16 v3, 0x2f8

    if-lt v4, v3, :cond_2

    .line 409
    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v3

    float-to-double v3, v1

    .line 410
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v2, v0

    float-to-double v0, v0

    .line 412
    mul-double v2, v3, v3

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 413
    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Tablet:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    sget-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Phone:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    goto :goto_0

    .line 415
    :cond_2
    sget-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Phone:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "_x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 229
    return-object v1
.end method

.method public static a(Z)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    if-eqz p0, :cond_2

    .line 378
    :cond_1
    :goto_0
    return-object v0

    .line 311
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/etc/vold.fstab"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    const/4 v3, 0x0

    .line 317
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_1
    if-eqz v1, :cond_6

    .line 324
    const-string v3, "dev_mount"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dev_mount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 326
    :cond_3
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dev_mount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 330
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 331
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 332
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_4
    invoke-static {v1}, LbC;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lcom/kavsdk/shared/SdkUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 341
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto :goto_1

    .line 359
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 367
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 349
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 351
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    if-eqz v2, :cond_1

    .line 363
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 365
    :catch_2
    move-exception v1

    .line 367
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 353
    :catch_3
    move-exception v1

    move-object v2, v3

    .line 355
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    if-eqz v2, :cond_1

    .line 363
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 365
    :catch_4
    move-exception v1

    .line 367
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 359
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_7

    .line 363
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 368
    :cond_7
    :goto_5
    throw v0

    .line 365
    :catch_5
    move-exception v1

    .line 367
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 359
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 353
    :catch_6
    move-exception v1

    goto :goto_3

    .line 349
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {}, Lcom/kavsdk/shared/Architecture;->a()Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    move-result-object v0

    sget-object v3, Lcom/kavsdk/shared/Architecture$ARCH_ABI;->X86:Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 156
    :goto_0
    sget-object v5, Lcom/kavsdk/shared/SdkUtils;->b:[Ljava/lang/String;

    array-length v7, v5

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v5, v3

    .line 157
    invoke-static {v8, p1}, Lcom/kavsdk/shared/SdkUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 158
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    .line 161
    :cond_2
    sget-object v7, Lcom/kavsdk/shared/SdkUtils;->a:[[Ljava/lang/String;

    array-length v8, v7

    move v5, v2

    :goto_2
    if-ge v5, v8, :cond_5

    aget-object v9, v7, v5

    .line 162
    if-eqz v0, :cond_4

    move v3, v1

    .line 163
    :goto_3
    aget-object v3, v9, v3

    .line 164
    aget-object v9, v9, v2

    .line 165
    invoke-static {v9, p1}, Lcom/kavsdk/shared/SdkUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 166
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_4
    move v3, v2

    .line 162
    goto :goto_3

    .line 170
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    :cond_6
    return-void

    .line 174
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 176
    const-string v1, "KAVSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Folder "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " does not exists. Trying to create"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_8

    .line 178
    const-string v0, "KAVSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create folder "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 186
    :cond_9
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 187
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_9

    .line 189
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 193
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    const/4 v0, 0x0

    invoke-static {v4, v3, v7, v8, v0}, Lbr;->a(Ljava/io/File;Ljava/lang/String;JZ)Ljava/io/File;

    move-result-object v0

    .line 195
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-static {v1, v4}, LbB;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 203
    const-string v4, "_x86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 204
    invoke-static {v0, p1}, Lcom/kavsdk/shared/SdkUtils;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 207
    :cond_a
    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 208
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 212
    :cond_b
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 215
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, LbB;->a(Ljava/io/Closeable;)Z

    throw v0

    .line 199
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    :cond_c
    invoke-static {v1}, LbB;->a(Ljava/io/Closeable;)Z

    .line 218
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v2, v0, :cond_6

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad file format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 253
    invoke-static {}, Lcom/kavsdk/shared/SdkUtils;->initDebugTraceJni()V

    .line 257
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/kms.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/kms_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 267
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 268
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 270
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 271
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 283
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/kavsdk/shared/SdkUtils;->initFileLogger(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/kavsdk/shared/SdkUtils;->initConsoleLogger()V

    .line 285
    invoke-static {}, Lcom/kavsdk/shared/SdkUtils;->initAndroidLogger()V

    .line 286
    return-void

    .line 273
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 274
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 278
    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a([B)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 423
    array-length v2, p0

    move v1, v0

    .line 425
    :goto_0
    if-ge v0, v2, :cond_0

    .line 426
    aget-byte v3, p0, v0

    mul-int/lit8 v1, v1, 0x5

    rsub-int v1, v1, 0x100

    add-int/lit8 v1, v1, -0x7

    int-to-byte v1, v1

    add-int/2addr v1, v3

    int-to-byte v1, v1

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 427
    aget-byte v1, p0, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;LgH;[Landroid/content/pm/Signature;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 131
    invoke-interface {p1}, LgH;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {p1}, LgH;->e()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 137
    :goto_0
    if-nez v1, :cond_2

    .line 142
    :cond_0
    :goto_1
    return v0

    .line 135
    :cond_1
    invoke-interface {p1}, LgH;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p2, v1}, Lcom/kavsdk/shared/SdkUtils;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 394
    :cond_0
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native initAndroidLogger()V
.end method

.method private static native initConsoleLogger()V
.end method

.method public static native initDebugTraceJni()V
.end method

.method private static native initFileLogger(Ljava/lang/String;)V
.end method

.method public static native killParasiteProcesses()I
.end method
