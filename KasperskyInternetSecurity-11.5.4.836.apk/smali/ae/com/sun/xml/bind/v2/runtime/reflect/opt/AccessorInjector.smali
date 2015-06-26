.class Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;
.super Ljava/lang/Object;
.source "AccessorInjector.java"


# static fields
.field private static final CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final logger:Ljava/util/logging/Logger;

.field protected static final noOptimize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->logger:Ljava/util/logging/Logger;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".noOptimize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/com/sun/xml/bind/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->noOptimize:Z

    .line 61
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->noOptimize:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->logger:Ljava/util/logging/Logger;

    const-string v1, "The optimized code generation is disabled"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    :cond_0
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs prepare(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p0, "beanClass"    # Ljava/lang/Class;
    .param p1, "templateClassName"    # Ljava/lang/String;
    .param p2, "newClassName"    # Ljava/lang/String;
    .param p3, "replacements"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 74
    sget-boolean v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->noOptimize:Z

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 100
    :goto_0
    return-object v0

    .line 78
    :cond_0
    :try_start_0
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 79
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, "c":Ljava/lang/Class;
    const-class v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-static {v1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->find(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    invoke-static {p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->tailor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v3

    .line 91
    .local v3, "image":[B
    if-nez v3, :cond_2

    .line 92
    monitor-exit v6

    move-object v0, v4

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {v1, p2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->inject(Ljava/lang/ClassLoader;Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .end local v3    # "image":[B
    :cond_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Unable to create an optimized TransducedAccessor "

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 100
    goto :goto_0
.end method

.method private static varargs tailor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 4
    .param p0, "templateClassName"    # Ljava/lang/String;
    .param p1, "newClassName"    # Ljava/lang/String;
    .param p2, "replacements"    # [Ljava/lang/String;

    .prologue
    .line 119
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/AccessorInjector;->CLASS_LOADER:Ljava/lang/ClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 123
    .local v0, "resource":Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_1

    .line 124
    const/4 v1, 0x0

    .line 126
    :goto_1
    return-object v1

    .line 122
    .end local v0    # "resource":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "resource":Ljava/io/InputStream;
    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0, p0, p1, p2}, Lae/com/sun/xml/bind/v2/bytecode/ClassTailor;->tailor(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1
.end method
