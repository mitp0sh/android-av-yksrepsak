.class public Lae/javax/xml/bind/annotation/W3CDomHandler;
.super Ljava/lang/Object;
.source "W3CDomHandler.java"

# interfaces
.implements Lae/javax/xml/bind/annotation/DomHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/javax/xml/bind/annotation/DomHandler",
        "<",
        "Lorg/w3c/dom/Element;",
        "Ljavax/xml/transform/dom/DOMResult;",
        ">;"
    }
.end annotation


# instance fields
.field private builder:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lae/javax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljavax/xml/parsers/DocumentBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljavax/xml/parsers/DocumentBuilder;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lae/javax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 87
    return-void
.end method


# virtual methods
.method public bridge synthetic createUnmarshaller(Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Result;
    .locals 1
    .param p1, "x0"    # Lae/javax/xml/bind/ValidationEventHandler;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/W3CDomHandler;->createUnmarshaller(Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/dom/DOMResult;

    move-result-object v0

    return-object v0
.end method

.method public createUnmarshaller(Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/dom/DOMResult;
    .locals 2
    .param p1, "errorHandler"    # Lae/javax/xml/bind/ValidationEventHandler;

    .prologue
    .line 98
    iget-object v0, p0, Lae/javax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v0}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/xml/transform/dom/DOMResult;

    iget-object v1, p0, Lae/javax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public getBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/javax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    return-object v0
.end method

.method public bridge synthetic getElement(Ljavax/xml/transform/Result;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/xml/transform/Result;

    .prologue
    .line 61
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1    # "x0":Ljavax/xml/transform/Result;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/W3CDomHandler;->getElement(Ljavax/xml/transform/dom/DOMResult;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElement(Ljavax/xml/transform/dom/DOMResult;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "r"    # Ljavax/xml/transform/dom/DOMResult;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 108
    .local v0, "n":Lorg/w3c/dom/Node;
    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Lorg/w3c/dom/Document;

    .end local v0    # "n":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "n":Lorg/w3c/dom/Node;
    :cond_0
    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    .line 112
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 113
    :cond_1
    instance-of v1, v0, Lorg/w3c/dom/DocumentFragment;

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    move-object v0, v1

    goto :goto_0

    .line 119
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/javax/xml/bind/ValidationEventHandler;

    .prologue
    .line 61
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/javax/xml/bind/annotation/W3CDomHandler;->marshal(Lorg/w3c/dom/Element;Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lorg/w3c/dom/Element;Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "errorHandler"    # Lae/javax/xml/bind/ValidationEventHandler;

    .prologue
    .line 123
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public setBuilder(Ljavax/xml/parsers/DocumentBuilder;)V
    .locals 0
    .param p1, "builder"    # Ljavax/xml/parsers/DocumentBuilder;

    .prologue
    .line 94
    iput-object p1, p0, Lae/javax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 95
    return-void
.end method
