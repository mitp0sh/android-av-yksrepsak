.class public interface abstract Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
.super Ljava/lang/Object;
.source "Bindings.java"

# interfaces
.implements Lcom/sun/xml/txw2/TypedXmlWriter;


# annotations
.annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    value = "bindings"
.end annotation


# virtual methods
.method public abstract bindings()Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method

.method public abstract klass()Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
        value = "class"
    .end annotation
.end method

.method public abstract scd(Ljava/lang/String;)V
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method

.method public abstract schemaBindings()Lae/com/sun/xml/bind/v2/schemagen/episode/SchemaBindings;
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlElement;
    .end annotation
.end method

.method public abstract typesafeEnumClass()Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;
.end method

.method public abstract version(Ljava/lang/String;)V
    .annotation runtime Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .end annotation
.end method
