.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;
.super Ljava/lang/Object;
.source "ElementPropertyInfo.java"

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
.method public abstract getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getXmlName()Ljavax/xml/namespace/QName;
.end method

.method public abstract isCollectionNillable()Z
.end method

.method public abstract isCollectionRequired()Z
.end method

.method public abstract isRequired()Z
.end method

.method public abstract isValueList()Z
.end method
