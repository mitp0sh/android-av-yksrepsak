.class final Lcom/sun/istack/XMLStreamReaderToContentHandler$1;
.super Ljava/lang/Object;
.source "XMLStreamReaderToContentHandler.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleStartDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/istack/XMLStreamReaderToContentHandler;


# direct methods
.method constructor <init>(Lcom/sun/istack/XMLStreamReaderToContentHandler;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;->this$0:Lcom/sun/istack/XMLStreamReaderToContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;->this$0:Lcom/sun/istack/XMLStreamReaderToContentHandler;

    # getter for: Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->access$000(Lcom/sun/istack/XMLStreamReaderToContentHandler;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;->this$0:Lcom/sun/istack/XMLStreamReaderToContentHandler;

    # getter for: Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->access$000(Lcom/sun/istack/XMLStreamReaderToContentHandler;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;->this$0:Lcom/sun/istack/XMLStreamReaderToContentHandler;

    # getter for: Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->access$000(Lcom/sun/istack/XMLStreamReaderToContentHandler;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;->this$0:Lcom/sun/istack/XMLStreamReaderToContentHandler;

    # getter for: Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->access$000(Lcom/sun/istack/XMLStreamReaderToContentHandler;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
