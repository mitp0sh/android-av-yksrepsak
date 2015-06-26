.class public interface abstract Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
.super Ljava/lang/Object;
.source "RuntimeTypeInfoSet.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract arrays()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract beans()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract builtins()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeBuiltinLeafInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract enums()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllElements()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method

.method public abstract getClassInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method

.method public abstract getElementInfo(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
.end method

.method public abstract getElementMappings(Ljava/lang/Class;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
.end method

.method public abstract getTypeInfo(Ljava/lang/reflect/Type;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
.end method
