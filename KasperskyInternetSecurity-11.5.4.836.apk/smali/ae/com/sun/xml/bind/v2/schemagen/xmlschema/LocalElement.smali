.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
.super Ljava/lang/Object;
.source "LocalElement.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# annotations
.annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    value = "element"
.end annotation


# virtual methods
.method public abstract form(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method
