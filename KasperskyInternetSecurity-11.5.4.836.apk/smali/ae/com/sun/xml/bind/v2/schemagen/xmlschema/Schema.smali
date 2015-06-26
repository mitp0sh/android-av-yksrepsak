.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
.super Ljava/lang/Object;
.source "Schema.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SchemaTop;
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# annotations
.annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    value = "schema"
.end annotation


# virtual methods
.method public abstract _import()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
        value = "import"
    .end annotation
.end method

.method public abstract annotation()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Annotation;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method

.method public abstract attributeFormDefault(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract blockDefault(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract blockDefault([Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract elementFormDefault(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract finalDefault(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract finalDefault([Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract id(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract lang(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
        ns = "http://www.w3.org/XML/1998/namespace"
    .end annotation
.end method

.method public abstract targetNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract version(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method
