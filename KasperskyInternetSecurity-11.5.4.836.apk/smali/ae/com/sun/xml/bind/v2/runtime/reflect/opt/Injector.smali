.class final Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final defineClass:Ljava/lang/reflect/Method;

.field private static final findLoadedClass:Ljava/lang/reflect/Method;

.field private static final injectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ir:Ljava/util/concurrent/locks/Lock;

.field private static final irwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final iw:Ljava/util/concurrent/locks/Lock;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final resolveClass:Ljava/lang/reflect/Method;


# instance fields
.field private final classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final loadable:Z

.field private final parent:Ljava/lang/ClassLoader;

.field private final r:Ljava/util/concurrent/locks/Lock;

.field private final rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final w:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const-class v3, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    sput-boolean v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->$assertionsDisabled:Z

    .line 76
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->irwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 77
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->irwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->ir:Ljava/util/concurrent/locks/Lock;

    .line 78
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->irwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->iw:Ljava/util/concurrent/locks/Lock;

    .line 79
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->injectors:Ljava/util/Map;

    .line 81
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    .line 165
    :try_start_0
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "defineClass"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->defineClass:Ljava/lang/reflect/Method;

    .line 166
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "resolveClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->resolveClass:Ljava/lang/reflect/Method;

    .line 167
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "findLoadedClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->findLoadedClass:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector$1;

    invoke-direct {v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 183
    return-void

    :cond_0
    move v1, v2

    .line 69
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    .line 150
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 151
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    .line 152
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    .line 186
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->parent:Ljava/lang/ClassLoader;

    .line 187
    sget-boolean v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 192
    .local v0, "loadableCheck":Z
    :try_start_0
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 197
    :goto_0
    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->loadable:Z

    .line 198
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->defineClass:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->resolveClass:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->findLoadedClass:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static find(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->get(Ljava/lang/ClassLoader;)Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;

    move-result-object v0

    .line 103
    .local v0, "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    if-eqz v0, :cond_0

    .line 104
    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->find(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private find(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 314
    :try_start_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static get(Ljava/lang/ClassLoader;)Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .locals 8
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->ir:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 121
    :try_start_0
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->injectors:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->ir:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;

    .restart local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    move-object v2, v1

    .line 128
    .end local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .local v2, "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    :goto_0
    if-nez v2, :cond_1

    .line 130
    :try_start_1
    new-instance v4, Ljava/lang/ref/WeakReference;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .restart local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    :try_start_2
    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    .local v4, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    :try_start_3
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->iw:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 133
    :try_start_4
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->injectors:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->injectors:Ljava/util/Map;

    invoke-interface {v5, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    :cond_0
    :try_start_5
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->iw:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, v4

    .end local v4    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    .restart local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    :goto_1
    move-object v5, v1

    .line 144
    :goto_2
    return-object v5

    .line 123
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    :catchall_0
    move-exception v5

    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->ir:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 137
    .restart local v4    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    :catchall_1
    move-exception v5

    :try_start_6
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->iw:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    .line 139
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 140
    .end local v4    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;>;"
    :goto_3
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Unable to set up a back-door for the injector"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    const/4 v5, 0x0

    goto :goto_2

    .line 139
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .restart local v2    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .restart local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    .end local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .restart local v2    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    :cond_1
    move-object v1, v2

    .end local v2    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .restart local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    goto :goto_1

    :cond_2
    move-object v2, v1

    .end local v1    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    .restart local v2    # "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    goto :goto_0
.end method

.method static inject(Ljava/lang/ClassLoader;Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "image"    # [B

    .prologue
    .line 90
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->get(Ljava/lang/ClassLoader;)Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;

    move-result-object v0

    .line 91
    .local v0, "injector":Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->inject(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private inject(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 13
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "image"    # [B

    .prologue
    const/4 v7, 0x0

    .line 202
    iget-boolean v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->loadable:Z

    if-nez v6, :cond_1

    move-object v1, v7

    .line 306
    :cond_0
    :goto_0
    return-object v1

    .line 207
    :cond_1
    const/4 v5, 0x0

    .line 208
    .local v5, "wlocked":Z
    const/4 v3, 0x0

    .line 211
    .local v3, "rlocked":Z
    :try_start_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 212
    const/4 v3, 0x1

    .line 214
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 218
    .local v1, "c":Ljava/lang/Class;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const/4 v3, 0x0

    .line 222
    if-nez v1, :cond_5

    .line 225
    :try_start_1
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->findLoadedClass:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->parent:Ljava/lang/ClassLoader;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :goto_1
    if-eqz v1, :cond_5

    .line 237
    :try_start_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 238
    const/4 v5, 0x1

    .line 240
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    const/4 v5, 0x0

    .line 302
    if-eqz v3, :cond_2

    .line 303
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_2
    if-eqz v5, :cond_0

    .line 306
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 302
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_3

    .line 303
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_3
    if-eqz v5, :cond_4

    .line 306
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_4
    throw v6

    .line 228
    .restart local v1    # "c":Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 230
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 232
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 249
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_5
    if-nez v1, :cond_7

    .line 251
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 252
    const/4 v3, 0x1

    .line 254
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "c":Ljava/lang/Class;
    check-cast v1, Ljava/lang/Class;

    .line 258
    .restart local v1    # "c":Ljava/lang/Class;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    const/4 v3, 0x0

    .line 261
    if-nez v1, :cond_7

    .line 265
    :try_start_5
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->defineClass:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->parent:Ljava/lang/ClassLoader;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    array-length v11, p2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 266
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->resolveClass:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->parent:Ljava/lang/ClassLoader;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    :try_start_6
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    const/4 v5, 0x1

    .line 292
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 293
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->classes:Ljava/util/Map;

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_6
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 297
    const/4 v5, 0x0

    .line 302
    :cond_7
    if-eqz v3, :cond_8

    .line 303
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_8
    if-eqz v5, :cond_0

    .line 306
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 267
    :catch_3
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_7
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to inject "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 302
    if-eqz v3, :cond_9

    .line 303
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_9
    if-eqz v5, :cond_a

    .line 306
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_a
    move-object v1, v7

    goto/16 :goto_0

    .line 270
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 272
    .restart local v4    # "t":Ljava/lang/Throwable;
    instance-of v6, v4, Ljava/lang/LinkageError;

    if-eqz v6, :cond_d

    .line 273
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate class definition bug occured? Please report this : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 302
    :goto_2
    if-eqz v3, :cond_b

    .line 303
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_b
    if-eqz v5, :cond_c

    .line 306
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_c
    move-object v1, v7

    goto/16 :goto_0

    .line 275
    :cond_d
    :try_start_9
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to inject "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 278
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to inject "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 302
    if-eqz v3, :cond_e

    .line 303
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_e
    if-eqz v5, :cond_f

    .line 306
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_f
    move-object v1, v7

    goto/16 :goto_0

    .line 281
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/LinkageError;
    :try_start_a
    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to inject "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 302
    if-eqz v3, :cond_10

    .line 303
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    :cond_10
    if-eqz v5, :cond_11

    .line 306
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/Injector;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_11
    move-object v1, v7

    goto/16 :goto_0
.end method
