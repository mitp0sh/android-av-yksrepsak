.class Lae/javax/xml/bind/util/JAXBSource$1;
.super Ljava/lang/Object;
.source "JAXBSource.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/javax/xml/bind/util/JAXBSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

.field final synthetic this$0:Lae/javax/xml/bind/util/JAXBSource;


# direct methods
.method constructor <init>(Lae/javax/xml/bind/util/JAXBSource;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->this$0:Lae/javax/xml/bind/util/JAXBSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Lorg/xml/sax/helpers/XMLFilterImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 177
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_0
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 259
    :try_start_0
    iget-object v1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->this$0:Lae/javax/xml/bind/util/JAXBSource;

    # getter for: Lae/javax/xml/bind/util/JAXBSource;->marshaller:Lae/javax/xml/bind/Marshaller;
    invoke-static {v1}, Lae/javax/xml/bind/util/JAXBSource;->access$100(Lae/javax/xml/bind/util/JAXBSource;)Lae/javax/xml/bind/Marshaller;

    move-result-object v1

    iget-object v3, p0, Lae/javax/xml/bind/util/JAXBSource$1;->this$0:Lae/javax/xml/bind/util/JAXBSource;

    # getter for: Lae/javax/xml/bind/util/JAXBSource;->contentObject:Ljava/lang/Object;
    invoke-static {v3}, Lae/javax/xml/bind/util/JAXBSource;->access$000(Lae/javax/xml/bind/util/JAXBSource;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lae/javax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    invoke-interface {v1, v3, v5}, Lae/javax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 260
    :catch_0
    move-exception v6

    .line 262
    .local v6, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v6}, Lae/javax/xml/bind/JAXBException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    .line 268
    .local v0, "se":Lorg/xml/sax/SAXParseException;
    iget-object v1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 273
    :cond_0
    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lae/javax/xml/bind/util/JAXBSource$1;->parse()V

    .line 252
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lae/javax/xml/bind/util/JAXBSource$1;->parse()V

    .line 248
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 232
    iget-object v0, p0, Lae/javax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 233
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 220
    iput-object p1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 221
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 212
    iput-object p1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 213
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 240
    iput-object p1, p0, Lae/javax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 241
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 188
    :cond_0
    return-void

    .line 187
    :cond_1
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 189
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lae/javax/xml/bind/util/JAXBSource$1;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 202
    return-void

    .line 204
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
