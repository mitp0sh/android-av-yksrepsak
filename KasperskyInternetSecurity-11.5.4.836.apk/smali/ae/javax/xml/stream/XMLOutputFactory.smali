.class public abstract Lae/javax/xml/stream/XMLOutputFactory;
.super Ljava/lang/Object;
.source "XMLOutputFactory.java"


# static fields
.field public static final IS_REPAIRING_NAMESPACES:Ljava/lang/String; = "ae.javax.xml.stream.isRepairingNamespaces"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lae/javax/xml/stream/XMLInputFactory;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 115
    const-string v0, "com.bea.xml.stream.XMLOutputFactoryBase"

    invoke-static {p0, v0, p1}, Lae/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public static newInstance()Lae/javax/xml/stream/XMLOutputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "ae.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.bea.xml.stream.XMLOutputFactoryBase"

    invoke-static {v0, v1}, Lae/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createXMLEventWriter(Ljava/io/OutputStream;)Lae/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lae/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/Writer;)Lae/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljavax/xml/transform/Result;)Lae/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;)Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/Writer;)Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljavax/xml/transform/Result;)Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
