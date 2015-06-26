.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.super Ljava/lang/Object;
.source "RuntimeNonElement.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/NonElement;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/NonElement",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;"
    }
.end annotation


# virtual methods
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
