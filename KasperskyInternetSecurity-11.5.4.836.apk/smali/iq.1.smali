.class public final Liq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Liq;->a:Ljava/lang/reflect/Method;

    .line 26
    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Liq;->b:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Liq;->b:Ljava/io/File;

    const-string v2, "odex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Liq;->c:Ljava/io/File;

    .line 28
    iget-object v0, p0, Liq;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 29
    invoke-direct {p0}, Liq;->b()V

    .line 30
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Liq;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rootdetector.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Liq;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 43
    :try_start_0
    const-string v0, "com.kaspersky.components.rootdetector.RootDetectorImpl"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v1, "isRoot"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Liq;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Liq;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RootDetector is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Liq;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
