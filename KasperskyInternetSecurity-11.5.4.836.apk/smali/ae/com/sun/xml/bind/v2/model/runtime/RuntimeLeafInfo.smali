.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;
.super Ljava/lang/Object;
.source "RuntimeLeafInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/LeafInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/LeafInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;"
    }
.end annotation


# virtual methods
.method public abstract getClazz()Ljava/lang/Class;
.end method

.method public abstract getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TV;>;"
        }
    .end annotation
.end method

.method public abstract getTypeNames()[Ljavax/xml/namespace/QName;
.end method
