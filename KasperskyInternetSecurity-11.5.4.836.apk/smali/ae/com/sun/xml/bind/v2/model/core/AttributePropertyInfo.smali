.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;
.super Ljava/lang/Object;
.source "AttributePropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/NonElementRef;
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
        "<TT;TC;>;",
        "Lae/com/sun/xml/bind/v2/model/core/NonElementRef",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
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

.method public abstract isRequired()Z
.end method
