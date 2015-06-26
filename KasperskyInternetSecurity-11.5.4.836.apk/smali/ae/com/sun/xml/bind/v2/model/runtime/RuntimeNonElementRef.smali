.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;
.super Ljava/lang/Object;
.source "RuntimeNonElementRef.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/NonElementRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/NonElementRef",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
.end method

.method public abstract getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method

.method public abstract getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
.end method
