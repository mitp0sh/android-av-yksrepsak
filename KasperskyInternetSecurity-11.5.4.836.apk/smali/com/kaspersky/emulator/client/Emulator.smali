.class public Lcom/kaspersky/emulator/client/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaspersky/emulator/client/Emulator$Trouble;
    }
.end annotation


# static fields
.field public static final ACTION_DETECT:Ljava/lang/String; = "com.kaspersky.emulator.ACTION_DETECT"

.field public static final ACTION_RESULT:Ljava/lang/String; = "com.kaspersky.emulator.ACTION_RESULT"

.field public static final ACTION_START:Ljava/lang/String; = "com.kaspersky.emulator.ACTION_START"

.field public static final ACTION_TROUBLE:Ljava/lang/String; = "com.kaspersky.emulator.ACTION_TROUBLE"

.field private static final EMULATOR_BINARY:Ljava/lang/String; = "pdm.jar"

.field private static final EMULATOR_FACTORY_CLASS:Ljava/lang/String; = "com.kaspersky.emulator.client.Factory"

.field public static final EXTRA_DUMPPATH:Ljava/lang/String; = "com.kaspersky.emulator.EXTRA_DUMPPATH"

.field public static final EXTRA_ISSILENT:Ljava/lang/String; = "com.kaspersky.emulator.EXTRA_ISSILENT"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "com.kaspersky.emulator.EXTRA_PACKAGE"

.field public static final EXTRA_RECORDID:Ljava/lang/String; = "com.kaspersky.emulator.EXTRA_RECORDID"

.field public static final EXTRA_TROUBLE:Ljava/lang/String; = "com.kaspersky.emulator.EXTRA_TROUBLE"

.field public static final EXTRA_VERDICT:Ljava/lang/String; = "com.kaspersky.emulator.EXTRA_VERDICT"


# instance fields
.field private final mEmulator:Ljava/lang/Object;

.field private final mRunMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kaspersky/emulator/client/Emulator;->load(Ljava/io/File;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/emulator/client/Emulator;->mEmulator:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/kaspersky/emulator/client/Emulator;->mEmulator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/kaspersky/emulator/client/Emulator;->mEmulator:Ljava/lang/Object;

    invoke-static {v0}, Lcom/kaspersky/emulator/client/Emulator;->loadRunMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/emulator/client/Emulator;->mRunMethod:Ljava/lang/reflect/Method;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/emulator/client/Emulator;->mRunMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private static load(Ljava/io/File;Landroid/content/Context;)Ljava/lang/Object;
    .locals 9
    .param p0, "path"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "impl":Ljava/lang/Object;
    new-instance v1, Ljava/io/File;

    const-string v5, "pdm.jar"

    invoke-direct {v1, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v1, "emulatorPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v6, "odex"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 70
    invoke-direct {v0, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 73
    .local v0, "emulatorLoader":Ljava/lang/ClassLoader;
    const-string v5, "com.kaspersky.emulator.client.Factory"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 74
    .local v3, "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 75
    const-string v5, "load"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "emulatorLoader":Ljava/lang/ClassLoader;
    .end local v2    # "impl":Ljava/lang/Object;
    .end local v3    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v4

    .line 77
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 78
    .restart local v2    # "impl":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadRunMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "emulatorObj"    # Ljava/lang/Object;

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "runApplication"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public runApplication(Ljava/io/File;)V
    .locals 1
    .param p1, "appFile"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/emulator/client/Emulator;->runApplication(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public runApplication(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/emulator/client/Emulator;->mRunMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/kaspersky/emulator/client/Emulator;->mRunMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/kaspersky/emulator/client/Emulator;->mEmulator:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
