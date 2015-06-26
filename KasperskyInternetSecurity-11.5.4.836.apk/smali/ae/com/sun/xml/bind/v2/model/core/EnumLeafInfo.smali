.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;
.super Ljava/lang/Object;
.source "EnumLeafInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/LeafInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/LeafInfo",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getBaseType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getClazz()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getConstants()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/EnumConstant;",
            ">;"
        }
    .end annotation
.end method
