.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;
.super Ljava/lang/Object;
.source "TopLevelAttribute.java"

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
.method public abstract name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method
