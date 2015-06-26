.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/RegistryInfo;
.super Ljava/lang/Object;
.source "RegistryInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getClazz()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getReferences()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method
