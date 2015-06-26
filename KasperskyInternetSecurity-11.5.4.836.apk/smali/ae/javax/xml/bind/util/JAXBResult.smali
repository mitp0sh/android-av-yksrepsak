.class public Lae/javax/xml/bind/util/JAXBResult;
.super Ljavax/xml/transform/sax/SAXResult;
.source "JAXBResult.java"


# instance fields
.field private final unmarshallerHandler:Lae/javax/xml/bind/UnmarshallerHandler;


# direct methods
.method public constructor <init>(Lae/javax/xml/bind/JAXBContext;)V
    .locals 1
    .param p1, "context"    # Lae/javax/xml/bind/JAXBContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    invoke-static {}, Lae/javax/xml/bind/util/JAXBResult;->assertionFailed()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lae/javax/xml/bind/util/JAXBResult;-><init>(Lae/javax/xml/bind/Unmarshaller;)V

    .line 104
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lae/javax/xml/bind/Unmarshaller;)V
    .locals 2
    .param p1, "_unmarshaller"    # Lae/javax/xml/bind/Unmarshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXResult;-><init>()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Lae/javax/xml/bind/JAXBException;

    const-string v1, "JAXBResult.NullUnmarshaller"

    invoke-static {v1}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-interface {p1}, Lae/javax/xml/bind/Unmarshaller;->getUnmarshallerHandler()Lae/javax/xml/bind/UnmarshallerHandler;

    move-result-object v0

    iput-object v0, p0, Lae/javax/xml/bind/util/JAXBResult;->unmarshallerHandler:Lae/javax/xml/bind/UnmarshallerHandler;

    .line 132
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBResult;->unmarshallerHandler:Lae/javax/xml/bind/UnmarshallerHandler;

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 133
    return-void
.end method

.method private static assertionFailed()Lae/javax/xml/bind/Unmarshaller;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lae/javax/xml/bind/JAXBException;

    const-string v1, "JAXBResult.NullContext"

    invoke-static {v1}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBResult;->unmarshallerHandler:Lae/javax/xml/bind/UnmarshallerHandler;

    invoke-interface {v0}, Lae/javax/xml/bind/UnmarshallerHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
