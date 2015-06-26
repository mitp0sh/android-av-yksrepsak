.class public final Lae/com/sun/xml/bind/v2/ClassFactory;
.super Ljava/lang/Object;
.source "ClassFactory.java"


# static fields
.field private static final emptyClass:[Ljava/lang/Class;

.field private static final emptyObject:[Ljava/lang/Object;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final tls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lae/com/sun/xml/bind/v2/ClassFactory;->emptyClass:[Ljava/lang/Class;

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lae/com/sun/xml/bind/v2/ClassFactory;->emptyObject:[Ljava/lang/Object;

    .line 69
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    .line 76
    new-instance v0, Lae/com/sun/xml/bind/v2/ClassFactory$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/ClassFactory$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/ClassFactory;->tls:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanCache()V
    .locals 5

    .prologue
    .line 84
    sget-object v1, Lae/com/sun/xml/bind/v2/ClassFactory;->tls:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    sget-object v1, Lae/com/sun/xml/bind/v2/ClassFactory;->tls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to clean Thread Local cache of classes used in Unmarshaller: {0}"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/ClassFactory;->create0(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v2, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to create a new instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    new-instance v2, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to create a new instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 154
    .local v1, "target":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 155
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "target":Ljava/lang/Throwable;
    throw v1

    .line 158
    .restart local v1    # "target":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 159
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "target":Ljava/lang/Throwable;
    throw v1

    .line 164
    .restart local v1    # "target":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static create(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 12
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 174
    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lae/com/sun/xml/bind/v2/ClassFactory;->emptyObject:[Ljava/lang/Object;

    invoke-virtual {p0, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v8

    return-object v8

    .line 175
    :catch_0
    move-exception v5

    .line 176
    .local v5, "ive":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    .line 178
    .local v7, "target":Ljava/lang/Throwable;
    instance-of v8, v7, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_0

    .line 179
    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "target":Ljava/lang/Throwable;
    throw v7

    .line 181
    .restart local v7    # "target":Ljava/lang/Throwable;
    :cond_0
    instance-of v8, v7, Ljava/lang/Error;

    if-eqz v8, :cond_1

    .line 182
    check-cast v7, Ljava/lang/Error;

    .end local v7    # "target":Ljava/lang/Throwable;
    throw v7

    .line 184
    .restart local v7    # "target":Ljava/lang/Throwable;
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 185
    .end local v5    # "ive":Ljava/lang/reflect/InvocationTargetException;
    .end local v7    # "target":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to create a new instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    new-instance v8, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 189
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to create a new instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    move-object v2, v4

    .line 200
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    .local v2, "errorMsg":Ljava/lang/Throwable;
    :goto_0
    new-instance v3, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 201
    .local v3, "exp":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v3, v2}, Ljava/lang/NoSuchMethodError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 202
    throw v3

    .line 191
    .end local v2    # "errorMsg":Ljava/lang/Throwable;
    .end local v3    # "exp":Ljava/lang/NoSuchMethodError;
    :catch_3
    move-exception v6

    .line 192
    .local v6, "npe":Ljava/lang/NullPointerException;
    sget-object v8, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to create a new instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    move-object v2, v6

    .line 197
    .restart local v2    # "errorMsg":Ljava/lang/Throwable;
    goto :goto_0

    .line 194
    .end local v2    # "errorMsg":Ljava/lang/Throwable;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 195
    .local v1, "eie":Ljava/lang/ExceptionInInitializerError;
    sget-object v8, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to create a new instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    move-object v2, v1

    .restart local v2    # "errorMsg":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static create0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v10, 0x1

    .line 97
    sget-object v6, Lae/com/sun/xml/bind/v2/ClassFactory;->tls:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 98
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/ref/WeakReference<Ljava/lang/reflect/Constructor;>;>;"
    const/4 v1, 0x0

    .line 99
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 100
    .local v2, "consRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/reflect/Constructor;>;"
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 102
    .restart local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_0
    if-nez v1, :cond_3

    .line 104
    :try_start_0
    sget-object v6, Lae/com/sun/xml/bind/v2/ClassFactory;->emptyClass:[Ljava/lang/Class;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 119
    .local v0, "classMod":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 122
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :cond_2
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v0    # "classMod":I
    :cond_3
    sget-object v6, Lae/com/sun/xml/bind/v2/ClassFactory;->emptyObject:[Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 105
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No default constructor found on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 109
    new-instance v4, Ljava/lang/NoSuchMethodError;

    sget-object v6, Lae/com/sun/xml/bind/v2/Messages;->NO_DEFAULT_CONSTRUCTOR_IN_INNER_CLASS:Lae/com/sun/xml/bind/v2/Messages;

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "exp":Ljava/lang/NoSuchMethodError;
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/NoSuchMethodError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 114
    throw v4

    .line 111
    .end local v4    # "exp":Ljava/lang/NoSuchMethodError;
    :cond_4
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .restart local v4    # "exp":Ljava/lang/NoSuchMethodError;
    goto :goto_0

    .line 123
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "exp":Ljava/lang/NoSuchMethodError;
    .restart local v0    # "classMod":I
    :catch_1
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v6, Lae/com/sun/xml/bind/v2/ClassFactory;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to make the constructor of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " accessible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    throw v3
.end method

.method public static inferImplClass(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .param p1, "knownImplClasses"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    .end local p0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    return-object p0

    .line 215
    .restart local p0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 216
    .local v2, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {v2, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    .end local v2    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method
