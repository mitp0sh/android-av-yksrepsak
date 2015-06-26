.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
.super Ljava/lang/Object;
.source "RuntimeTypeRef.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/TypeRef;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;"
    }
.end annotation


# virtual methods
.method public abstract getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
.end method

.method public abstract getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method
