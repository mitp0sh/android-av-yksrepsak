.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getElementName()Ljavax/xml/namespace/QName;
.end method

.method public abstract getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;"
        }
    .end annotation
.end method
