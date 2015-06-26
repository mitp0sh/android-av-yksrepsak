.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;
.super Ljava/lang/Object;
.source "ReferencePropertyInfo.java"

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

.method public abstract getDOMHandler()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getElements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;
.end method

.method public abstract getXmlName()Ljavax/xml/namespace/QName;
.end method

.method public abstract isCollectionNillable()Z
.end method

.method public abstract isCollectionRequired()Z
.end method

.method public abstract isMixed()Z
.end method

.method public abstract isRequired()Z
.end method

.method public abstract ref()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method
