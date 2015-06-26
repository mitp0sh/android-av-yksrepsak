.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;
.super Ljava/lang/Object;
.source "RuntimeReferencePropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;"
    }
.end annotation


# virtual methods
.method public abstract getElements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;",
            ">;"
        }
    .end annotation
.end method
