.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
.super Ljava/lang/Object;
.source "ElementInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/Element;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/Element",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getContentInMemoryType()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getContentType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getProperty()Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getSubstitutionMembers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
