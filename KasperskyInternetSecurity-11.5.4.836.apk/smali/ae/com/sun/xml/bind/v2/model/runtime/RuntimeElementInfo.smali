.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
.super Ljava/lang/Object;
.source "RuntimeElementInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;"
    }
.end annotation


# virtual methods
.method public abstract getContentType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method

.method public abstract getProperty()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;
.end method

.method public abstract getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/JAXBElement;",
            ">;"
        }
    .end annotation
.end method
