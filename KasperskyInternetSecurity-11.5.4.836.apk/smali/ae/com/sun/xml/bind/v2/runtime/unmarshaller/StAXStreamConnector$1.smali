.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;
.super Ljava/lang/Object;
.source "StAXStreamConnector.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 294
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 293
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 284
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-interface {v1, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getType(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 303
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getType(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-interface {v1, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 260
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 321
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 315
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;->getValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
