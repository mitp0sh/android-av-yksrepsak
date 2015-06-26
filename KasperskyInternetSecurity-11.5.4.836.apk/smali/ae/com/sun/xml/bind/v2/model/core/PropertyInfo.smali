.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
.super Ljava/lang/Object;
.source "PropertyInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;"
    }
.end annotation


# virtual methods
.method public abstract displayName()Ljava/lang/String;
.end method

.method public abstract getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getExpectedMimeType()Ljavax/activation/MimeType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSchemaType()Ljavax/xml/namespace/QName;
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation
.end method

.method public abstract id()Lae/com/sun/xml/bind/v2/model/core/ID;
.end method

.method public abstract inlineBinaryData()Z
.end method

.method public abstract isCollection()Z
.end method

.method public abstract kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
.end method

.method public abstract parent()Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo",
            "<TT;TC;>;"
        }
    .end annotation
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
