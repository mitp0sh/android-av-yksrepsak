.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;
.super Ljava/lang/Object;
.source "RuntimeClassInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RuntimePropertySeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field private final core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .param p2, "acc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "core":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    .line 314
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 315
    return-void
.end method


# virtual methods
.method public getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getRawType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->core:Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method
