.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;
.super Ljava/lang/Object;
.source "RuntimeArrayInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;"
    }
.end annotation


# virtual methods
.method public abstract getItemType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method

.method public abstract getType()Ljava/lang/Class;
.end method
