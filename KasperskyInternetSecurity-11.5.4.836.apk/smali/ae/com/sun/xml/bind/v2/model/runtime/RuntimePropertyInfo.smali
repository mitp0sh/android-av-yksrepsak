.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
.super Ljava/lang/Object;
.source "RuntimePropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract elementOnlyContent()Z
.end method

.method public abstract getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.end method

.method public abstract getIndividualType()Ljava/lang/reflect/Type;
.end method

.method public abstract getRawType()Ljava/lang/reflect/Type;
.end method

.method public abstract ref()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            ">;"
        }
    .end annotation
.end method
