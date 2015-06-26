.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeModel;
.super Ljava/lang/Object;
.source "ComplexTypeModel.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# virtual methods
.method public abstract complexContent()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexContent;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method

.method public abstract mixed(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeModel;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract simpleContent()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleContent;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method
