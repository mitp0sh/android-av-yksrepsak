.class public abstract Lae/javax/xml/bind/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XmlNode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lae/javax/xml/bind/Binder;, "Lae/javax/xml/bind/Binder<TXmlNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract getJAXBNode(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation
.end method

.method public abstract getSchema()Ljavax/xml/validation/Schema;
.end method

.method public abstract getXMLNode(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TXmlNode;"
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TXmlNode;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation
.end method

.method public abstract setSchema(Ljavax/xml/validation/Schema;)V
.end method

.method public abstract unmarshal(Ljava/lang/Object;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TXmlNode;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract updateJAXB(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract updateXML(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TXmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract updateXML(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TXmlNode;)TXmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method
