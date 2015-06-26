.class public interface abstract Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
.super Ljava/lang/Object;
.source "XmlVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
    }
.end annotation


# virtual methods
.method public abstract endDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endPrefixMapping(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
.end method

.method public abstract getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
.end method

.method public abstract startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract text(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
