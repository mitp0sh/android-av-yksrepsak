.class public Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetterSetterReflection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
        "<TBeanT;TValueT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final getter:Ljava/lang/reflect/Method;

.field public final setter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "getter"    # Ljava/lang/reflect/Method;
    .param p2, "setter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 323
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 327
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    .line 328
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    .line 330
    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->makeAccessible(Ljava/lang/reflect/Method;)V

    .line 332
    :cond_0
    if-eqz p2, :cond_1

    .line 333
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->makeAccessible(Ljava/lang/reflect/Method;)V

    .line 334
    :cond_1
    return-void

    .line 323
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)Lae/com/sun/xml/bind/api/AccessorException;
    .locals 2
    .param p1, "e"    # Ljava/lang/reflect/InvocationTargetException;

    .prologue
    .line 376
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 377
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 378
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 379
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 380
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 387
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private makeAccessible(Ljava/lang/reflect/Method;)V
    .locals 8
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    const/4 v7, 0x1

    .line 337
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/SecurityException;
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->access$000()Z

    move-result v1

    if-nez v1, :cond_2

    .line 343
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNABLE_TO_ACCESS_NON_PUBLIC_FIELD:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    :cond_2
    # setter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z
    invoke-static {v7}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->access$002(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)TValueT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)Lae/com/sun/xml/bind/api/AccessorException;

    move-result-object v1

    throw v1
.end method

.method public optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 3
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 403
    .end local p0    # "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 395
    .restart local p0    # "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->fastBoot:Z

    if-nez v1, :cond_0

    .line 399
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->getter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    invoke-static {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->get(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 400
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 401
    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;TValueT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "value":Ljava/lang/Object;, "TValueT;"
    if-nez p2, :cond_0

    .line 365
    :try_start_0
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->valueType:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 366
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->setter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$GetterSetterReflection;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)Lae/com/sun/xml/bind/api/AccessorException;

    move-result-object v1

    throw v1
.end method
