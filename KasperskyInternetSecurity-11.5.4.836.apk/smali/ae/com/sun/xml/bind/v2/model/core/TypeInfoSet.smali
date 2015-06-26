.class public interface abstract Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
.super Ljava/lang/Object;
.source "TypeInfoSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract arrays()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<+TT;+",
            "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract beans()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;+",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract builtins()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TT;+",
            "Lae/com/sun/xml/bind/v2/model/core/BuiltinLeafInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract dump(Ljavax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract enums()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;+",
            "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getAllElements()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getAttributeFormDefault(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;
.end method

.method public abstract getClassInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getElementFormDefault(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;
.end method

.method public abstract getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljavax/xml/namespace/QName;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getElementMappings(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "+",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getNavigator()Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end method

.method public abstract getSchemaLocations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeInfo(Lae/com/sun/xml/bind/v2/model/core/Ref;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/Ref",
            "<TT;TC;>;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end method

.method public abstract getXmlNs(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
