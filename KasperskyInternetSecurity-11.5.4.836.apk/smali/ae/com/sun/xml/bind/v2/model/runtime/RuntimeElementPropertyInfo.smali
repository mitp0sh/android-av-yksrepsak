.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;
.super Ljava/lang/Object;
.source "RuntimeElementPropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;"
    }
.end annotation


# virtual methods
.method public abstract getTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;",
            ">;"
        }
    .end annotation
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
