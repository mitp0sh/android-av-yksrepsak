.class public interface abstract Lae/javax/xml/stream/events/StartElement;
.super Ljava/lang/Object;
.source "StartElement.java"

# interfaces
.implements Lae/javax/xml/stream/events/XMLEvent;


# virtual methods
.method public abstract getAttributeByName(Ljavax/xml/namespace/QName;)Lae/javax/xml/stream/events/Attribute;
.end method

.method public abstract getAttributes()Ljava/util/Iterator;
.end method

.method public abstract getName()Ljavax/xml/namespace/QName;
.end method

.method public abstract getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
.end method

.method public abstract getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamespaces()Ljava/util/Iterator;
.end method
