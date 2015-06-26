.class public interface abstract Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;
.super Ljava/lang/Object;
.source "InfosetScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XmlNode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getContentHandler()Lorg/xml/sax/ContentHandler;
.end method

.method public abstract getCurrentElement()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TXmlNode;"
        }
    .end annotation
.end method

.method public abstract getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
.end method

.method public abstract scan(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method
