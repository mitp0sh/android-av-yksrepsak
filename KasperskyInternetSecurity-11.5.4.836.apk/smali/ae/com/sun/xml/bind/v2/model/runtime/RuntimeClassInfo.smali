.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
.super Ljava/lang/Object;
.source "RuntimeClassInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;"
    }
.end annotation


# virtual methods
.method public abstract getAttributeWildcard()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BeanT:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBaseClass()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
.end method

.method public abstract getFactoryMethod()Ljava/lang/reflect/Method;
.end method

.method public abstract getLocatorField()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BeanT:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;",
            "Lorg/xml/sax/Locator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
.end method
