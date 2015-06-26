.class public Lae/javax/xml/bind/util/JAXBSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "JAXBSource.java"


# instance fields
.field private final contentObject:Ljava/lang/Object;

.field private final marshaller:Lae/javax/xml/bind/Marshaller;

.field private final pseudoParser:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lae/javax/xml/bind/JAXBContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Lae/javax/xml/bind/JAXBContext;
    .param p2, "contentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_1

    const-string v0, "JAXBSource.NullContext"

    invoke-static {v0}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/javax/xml/bind/util/JAXBSource;->assertionFailed(Ljava/lang/String;)Lae/javax/xml/bind/Marshaller;

    move-result-object v0

    :goto_0
    if-nez p2, :cond_0

    const-string v1, "JAXBSource.NullContent"

    invoke-static {v1}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/javax/xml/bind/util/JAXBSource;->assertionFailed(Ljava/lang/String;)Lae/javax/xml/bind/Marshaller;

    move-result-object p2

    .end local p2    # "contentObject":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, v0, p2}, Lae/javax/xml/bind/util/JAXBSource;-><init>(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)V

    .line 133
    return-void

    .line 125
    .restart local p2    # "contentObject":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBContext;->createMarshaller()Lae/javax/xml/bind/Marshaller;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lae/javax/xml/bind/Marshaller;Ljava/lang/Object;)V
    .locals 2
    .param p1, "marshaller"    # Lae/javax/xml/bind/Marshaller;
    .param p2, "contentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 175
    new-instance v0, Lae/javax/xml/bind/util/JAXBSource$1;

    invoke-direct {v0, p0}, Lae/javax/xml/bind/util/JAXBSource$1;-><init>(Lae/javax/xml/bind/util/JAXBSource;)V

    iput-object v0, p0, Lae/javax/xml/bind/util/JAXBSource;->pseudoParser:Lorg/xml/sax/XMLReader;

    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Lae/javax/xml/bind/JAXBException;

    const-string v1, "JAXBSource.NullMarshaller"

    invoke-static {v1}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p2, :cond_1

    .line 158
    new-instance v0, Lae/javax/xml/bind/JAXBException;

    const-string v1, "JAXBSource.NullContent"

    invoke-static {v1}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iput-object p1, p0, Lae/javax/xml/bind/util/JAXBSource;->marshaller:Lae/javax/xml/bind/Marshaller;

    .line 162
    iput-object p2, p0, Lae/javax/xml/bind/util/JAXBSource;->contentObject:Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource;->pseudoParser:Lorg/xml/sax/XMLReader;

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 166
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lae/javax/xml/bind/util/JAXBSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lae/javax/xml/bind/util/JAXBSource;

    .prologue
    .line 106
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource;->contentObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lae/javax/xml/bind/util/JAXBSource;)Lae/javax/xml/bind/Marshaller;
    .locals 1
    .param p0, "x0"    # Lae/javax/xml/bind/util/JAXBSource;

    .prologue
    .line 106
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource;->marshaller:Lae/javax/xml/bind/Marshaller;

    return-object v0
.end method

.method private static assertionFailed(Ljava/lang/String;)Lae/javax/xml/bind/Marshaller;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v0, p0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
