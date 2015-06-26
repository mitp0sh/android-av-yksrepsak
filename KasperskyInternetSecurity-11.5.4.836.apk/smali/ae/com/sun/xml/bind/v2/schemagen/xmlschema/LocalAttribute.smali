.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
.super Ljava/lang/Object;
.source "LocalAttribute.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Annotated;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/FixedOrDefault;
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# annotations
.annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    value = "attribute"
.end annotation


# virtual methods
.method public abstract form(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract use(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method
