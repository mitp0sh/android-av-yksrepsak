.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;
.super Ljava/lang/Object;
.source "MapPropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getKeyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getValueType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getXmlName()Ljavax/xml/namespace/QName;
.end method

.method public abstract isCollectionNillable()Z
.end method
