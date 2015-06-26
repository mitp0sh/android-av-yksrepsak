.class public Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;
.super Ljava/lang/Object;
.source "LocatableAnnotation.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
.implements Lae/com/sun/xml/bind/v2/runtime/Location;
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final quicks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Quick;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final core:Ljava/lang/annotation/Annotation;

.field private final upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 143
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->quicks:Ljava/util/Map;

    .line 146
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/annotation/Init;->getAll()[Lae/com/sun/xml/bind/v2/model/annotation/Quick;

    move-result-object v0

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 147
    .local v3, "q":Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    sget-object v4, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->quicks:Ljava/util/Map;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "q":Lae/com/sun/xml/bind/v2/model/annotation/Quick;
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 0
    .param p1, "core"    # Ljava/lang/annotation/Annotation;
    .param p2, "upstream"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->core:Ljava/lang/annotation/Annotation;

    .line 106
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .line 107
    return-void
.end method

.method public static create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 7
    .param p1, "parentSourcePos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(TA;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez p0, :cond_1

    .line 73
    const/4 p0, 0x0

    .line 99
    .end local p0    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_0
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_1
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 76
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v4, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->quicks:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    sget-object v4, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->quicks:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/annotation/Quick;

    invoke-virtual {v4, p1, p0}, Lae/com/sun/xml/bind/v2/model/annotation/Quick;->newInstance(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Quick;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_2
    const-class v4, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;

    invoke-static {v4}, Lae/com/sun/xml/bind/v2/model/annotation/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 86
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 87
    .local v2, "loadableT":Ljava/lang/Class;
    if-ne v2, v3, :cond_0

    .line 90
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-class v6, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    aput-object v6, v4, v5

    new-instance v5, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;

    invoke-direct {v5, p0, p1}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;-><init>(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-static {v0, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Annotation;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v4

    goto :goto_0

    .line 93
    .end local v2    # "loadableT":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method


# virtual methods
.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->upstream:Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    .line 121
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 127
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->core:Ljava/lang/annotation/Annotation;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 131
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->core:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
