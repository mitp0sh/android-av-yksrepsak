.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Annotated;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeHost;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/FixedOrDefault;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# virtual methods
.method public abstract block(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract block([Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract type(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method
