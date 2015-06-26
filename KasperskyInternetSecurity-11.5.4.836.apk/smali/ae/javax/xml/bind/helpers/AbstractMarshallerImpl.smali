.class public abstract Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;
.super Ljava/lang/Object;
.source "AbstractMarshallerImpl.java"

# interfaces
.implements Lae/javax/xml/bind/Marshaller;


# static fields
.field static aliases:[Ljava/lang/String;


# instance fields
.field private encoding:Ljava/lang/String;

.field private eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

.field private formattedOutput:Z

.field private fragment:Z

.field private noNSSchemaLocation:Ljava/lang/String;

.field private schemaLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 260
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-16"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Unicode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UnicodeBigUnmarked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UnicodeLittleUnmarked"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "US-ASCII"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TIS-620"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TIS620"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ISO-10646-UCS-2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Unicode"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EBCDIC-CP-US"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cp037"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EBCDIC-CP-CA"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cp037"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EBCDIC-CP-NL"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cp037"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EBCDIC-CP-WT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cp037"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EBCDIC-CP-DK"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cp277"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EBCDIC-CP-NO"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "cp277"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EBCDIC-CP-FI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "cp278"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EBCDIC-CP-SE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "cp278"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "EBCDIC-CP-IT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "cp280"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "EBCDIC-CP-ES"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "cp284"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "EBCDIC-CP-GB"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "cp285"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "EBCDIC-CP-FR"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "cp297"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "EBCDIC-CP-AR1"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "cp420"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "EBCDIC-CP-HE"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "cp424"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "EBCDIC-CP-BE"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "cp500"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "EBCDIC-CP-CH"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "cp500"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "EBCDIC-CP-ROECE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "cp870"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "EBCDIC-CP-YU"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "cp870"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "EBCDIC-CP-IS"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "cp871"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "EBCDIC-CP-AR2"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "cp918"

    aput-object v2, v0, v1

    sput-object v0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;

    invoke-direct {v0}, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    .line 94
    const-string v0, "UTF-8"

    iput-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->encoding:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->schemaLocation:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->noNSSchemaLocation:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->formattedOutput:Z

    .line 106
    iput-boolean v1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->fragment:Z

    return-void
.end method

.method private checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 433
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    const-string v1, "AbstractMarshallerImpl.MustBeBoolean"

    invoke-static {v1, p1}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o1Name"    # Ljava/lang/String;
    .param p3, "o2"    # Ljava/lang/Object;
    .param p4, "o2Name"    # Ljava/lang/String;

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    invoke-static {v1, p2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    if-nez p3, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    invoke-static {v1, p4}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    return-void
.end method

.method private checkString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 442
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    const-string v1, "AbstractMarshallerImpl.MustBeString"

    invoke-static {v1, p1}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttachmentMarshaller()Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    return-object v0
.end method

.method protected getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 314
    .restart local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 317
    sget-object v2, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "1"

    sget-object v3, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 319
    sget-object v2, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object p1, v2, v3

    goto :goto_0

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 323
    :cond_1
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getListener()Lae/javax/xml/bind/Marshaller$Listener;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getNoNSSchemaLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->noNSSchemaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getNode(Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "obj"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "foo"

    invoke-direct {p0, p1, v0, v1, v2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "name"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    const-string v0, "jaxb.encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    .line 395
    :cond_1
    const-string v0, "jaxb.formatted.output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->isFormattedOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 397
    :cond_3
    const-string v0, "jaxb.noNamespaceSchemaLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->getNoNSSchemaLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_4
    const-string v0, "jaxb.schemaLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->getSchemaLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_5
    const-string v0, "jaxb.fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 402
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->isFragment()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 404
    :cond_7
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    invoke-direct {v0, p1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getSchemaLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->schemaLocation:Ljava/lang/String;

    return-object v0
.end method

.method protected isFormattedOutput()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->formattedOutput:Z

    return v0
.end method

.method protected isFragment()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->fragment:Z

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLEventWriter;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "writer"    # Lae/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "writer"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public marshal(Ljava/lang/Object;Ljava/io/File;)V
    .locals 4
    .param p1, "jaxbElement"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v2, "jaxbElement"

    const-string v3, "output"

    invoke-direct {p0, p1, v2, p2, v3}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 127
    return-void

    .line 122
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "obj"

    const-string v1, "os"

    invoke-direct {p0, p1, v0, p2, v1}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 113
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "obj"

    const-string v1, "writer"

    invoke-direct {p0, p1, v0, p2, v1}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 134
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "obj"

    const-string v1, "node"

    invoke-direct {p0, p1, v0, p2, v1}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v0, p2}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p1, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 148
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "obj"

    const-string v1, "handler"

    invoke-direct {p0, p1, v0, p2, v1}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {v0, p2}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0, p1, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 141
    return-void
.end method

.method public setAdapter(Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 486
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)V

    .line 487
    return-void
.end method

.method public setAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "adapter":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TA;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 1
    .param p1, "am"    # Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    .prologue
    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->encoding:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lae/javax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;

    invoke-direct {v0}, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v0, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iput-object p1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    goto :goto_0
.end method

.method protected setFormattedOutput(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->formattedOutput:Z

    .line 237
    return-void
.end method

.method protected setFragment(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->fragment:Z

    .line 257
    return-void
.end method

.method public setListener(Lae/javax/xml/bind/Marshaller$Listener;)V
    .locals 1
    .param p1, "listener"    # Lae/javax/xml/bind/Marshaller$Listener;

    .prologue
    .line 506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setNoNSSchemaLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->noNSSchemaLocation:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "name"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    const-string v0, "jaxb.encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setEncoding(Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 354
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "jaxb.formatted.output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setFormattedOutput(Z)V

    goto :goto_0

    .line 359
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v0, "jaxb.noNamespaceSchemaLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setNoNSSchemaLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v0, "jaxb.schemaLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setSchemaLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v0, "jaxb.fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setFragment(Z)V

    goto :goto_0

    .line 375
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    invoke-direct {v0, p1, p2}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 1
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setSchemaLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->schemaLocation:Ljava/lang/String;

    .line 199
    return-void
.end method
