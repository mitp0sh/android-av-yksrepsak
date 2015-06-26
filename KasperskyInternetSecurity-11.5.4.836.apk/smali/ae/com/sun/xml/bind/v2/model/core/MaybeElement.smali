.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/MaybeElement;
.super Ljava/lang/Object;
.source "MaybeElement.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/NonElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/NonElement",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract asElement()Lae/com/sun/xml/bind/v2/model/core/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Element",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getElementName()Ljavax/xml/namespace/QName;
.end method

.method public abstract isElement()Z
.end method
