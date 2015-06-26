.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/TypeRef;
.super Ljava/lang/Object;
.source "TypeRef.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/NonElementRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/NonElementRef",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getDefaultValue()Ljava/lang/String;
.end method

.method public abstract getTagName()Ljavax/xml/namespace/QName;
.end method

.method public abstract isNillable()Z
.end method
