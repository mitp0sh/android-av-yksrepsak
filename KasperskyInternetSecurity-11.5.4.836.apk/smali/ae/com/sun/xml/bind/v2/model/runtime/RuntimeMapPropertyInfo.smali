.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;
.super Ljava/lang/Object;
.source "RuntimeMapPropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;",
        "Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getKeyType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method

.method public abstract getValueType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method
