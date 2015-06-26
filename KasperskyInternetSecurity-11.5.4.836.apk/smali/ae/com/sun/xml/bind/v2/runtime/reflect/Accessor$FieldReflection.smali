.class public Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldReflection"
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
.field public final f:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 232
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Z)V
    .locals 9
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "supressAccessorWarnings"    # Z

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    const/4 v8, 0x1

    .line 236
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 237
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->f:Ljava/lang/reflect/Field;

    .line 239
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 240
    .local v1, "mod":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/SecurityException;
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->access$000()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    .line 249
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNABLE_TO_ACCESS_NON_PUBLIC_FIELD:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    :cond_2
    # setter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->accessWarned:Z
    invoke-static {v8}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->access$002(Z)Z

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

    .prologue
    .line 261
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 2
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
    .line 279
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->fastBoot:Z

    if-eqz v1, :cond_1

    .line 286
    .end local p0    # "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 282
    .restart local p0    # "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->f:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedAccessorFactory;->get(Ljava/lang/reflect/Field;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 283
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 284
    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;TValueT;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "value":Ljava/lang/Object;, "TValueT;"
    if-nez p2, :cond_0

    .line 270
    :try_start_0
    # getter for: Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->uninitializedValues:Ljava/util/Map;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->valueType:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 271
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor$FieldReflection;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
