.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/MaybeElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/MaybeElement",
        "<TT;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract declaresAttributeWildcard()Z
.end method

.method public abstract getBaseClass()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
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

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract hasAttributeWildcard()Z
.end method

.method public abstract hasProperties()Z
.end method

.method public abstract hasSubClasses()Z
.end method

.method public abstract hasValueProperty()Z
.end method

.method public abstract inheritsAttributeWildcard()Z
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isFinal()Z
.end method

.method public abstract isOrdered()Z
.end method
