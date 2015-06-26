.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SchemaTop;
.super Ljava/lang/Object;
.source "SchemaTop.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Redefinable;
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# virtual methods
.method public abstract attribute()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method

.method public abstract element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelElement;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method
