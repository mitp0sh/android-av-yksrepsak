.class public abstract Lcom/sun/xml/txw2/output/ResultFactory;
.super Ljava/lang/Object;
.source "ResultFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSerializer(Ljavax/xml/transform/Result;)Lcom/sun/xml/txw2/output/XmlSerializer;
    .locals 3
    .param p0, "result"    # Ljavax/xml/transform/Result;

    .prologue
    .line 70
    instance-of v0, p0, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/sun/xml/txw2/output/SaxSerializer;

    check-cast p0, Ljavax/xml/transform/sax/SAXResult;

    .end local p0    # "result":Ljavax/xml/transform/Result;
    invoke-direct {v0, p0}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Ljavax/xml/transform/sax/SAXResult;)V

    .line 77
    :goto_0
    return-object v0

    .line 72
    .restart local p0    # "result":Ljavax/xml/transform/Result;
    :cond_0
    instance-of v0, p0, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/sun/xml/txw2/output/DomSerializer;

    check-cast p0, Ljavax/xml/transform/dom/DOMResult;

    .end local p0    # "result":Ljavax/xml/transform/Result;
    invoke-direct {v0, p0}, Lcom/sun/xml/txw2/output/DomSerializer;-><init>(Ljavax/xml/transform/dom/DOMResult;)V

    goto :goto_0

    .line 74
    .restart local p0    # "result":Ljavax/xml/transform/Result;
    :cond_1
    instance-of v0, p0, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/sun/xml/txw2/output/StreamSerializer;

    check-cast p0, Ljavax/xml/transform/stream/StreamResult;

    .end local p0    # "result":Ljavax/xml/transform/Result;
    invoke-direct {v0, p0}, Lcom/sun/xml/txw2/output/StreamSerializer;-><init>(Ljavax/xml/transform/stream/StreamResult;)V

    goto :goto_0

    .line 76
    .restart local p0    # "result":Ljavax/xml/transform/Result;
    :cond_2
    instance-of v0, p0, Lcom/sun/xml/txw2/output/TXWResult;

    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Lcom/sun/xml/txw2/output/TXWSerializer;

    check-cast p0, Lcom/sun/xml/txw2/output/TXWResult;

    .end local p0    # "result":Ljavax/xml/transform/Result;
    invoke-virtual {p0}, Lcom/sun/xml/txw2/output/TXWResult;->getWriter()Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/xml/txw2/output/TXWSerializer;-><init>(Lcom/sun/xml/txw2/TypedXmlWriter;)V

    goto :goto_0

    .line 79
    .restart local p0    # "result":Ljavax/xml/transform/Result;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Result type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
