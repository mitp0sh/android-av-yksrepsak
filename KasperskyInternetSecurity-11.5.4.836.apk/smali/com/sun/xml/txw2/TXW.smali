.class public abstract Lcom/sun/xml/txw2/TXW;
.super Ljava/lang/Object;
.source "TXW.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;Lcom/sun/xml/txw2/output/XmlSerializer;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 7
    .param p1, "out"    # Lcom/sun/xml/txw2/output/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/sun/xml/txw2/output/XmlSerializer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "rootElement":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v3, p1, Lcom/sun/xml/txw2/output/TXWSerializer;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 104
    check-cast v2, Lcom/sun/xml/txw2/output/TXWSerializer;

    .line 105
    .local v2, "txws":Lcom/sun/xml/txw2/output/TXWSerializer;
    iget-object v3, v2, Lcom/sun/xml/txw2/output/TXWSerializer;->txw:Lcom/sun/xml/txw2/TypedXmlWriter;

    invoke-interface {v3, p0}, Lcom/sun/xml/txw2/TypedXmlWriter;->_element(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v3

    .line 110
    .end local v2    # "txws":Lcom/sun/xml/txw2/output/TXWSerializer;
    :goto_0
    return-object v3

    .line 108
    :cond_0
    new-instance v0, Lcom/sun/xml/txw2/Document;

    invoke-direct {v0, p1}, Lcom/sun/xml/txw2/Document;-><init>(Lcom/sun/xml/txw2/output/XmlSerializer;)V

    .line 109
    .local v0, "doc":Lcom/sun/xml/txw2/Document;
    invoke-static {p0}, Lcom/sun/xml/txw2/TXW;->getTagName(Ljava/lang/Class;)Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 110
    .local v1, "n":Ljavax/xml/namespace/QName;
    new-instance v3, Lcom/sun/xml/txw2/ContainerElement;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sun/xml/txw2/ContainerElement;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/ContainerElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/sun/xml/txw2/ContainerElement;->_cast(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v3

    goto :goto_0
.end method

.method public static create(Ljavax/xml/namespace/QName;Ljava/lang/Class;Lcom/sun/xml/txw2/output/XmlSerializer;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 6
    .param p0, "tagName"    # Ljavax/xml/namespace/QName;
    .param p2, "out"    # Lcom/sun/xml/txw2/output/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/sun/xml/txw2/output/XmlSerializer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "rootElement":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v1, p2, Lcom/sun/xml/txw2/output/TXWSerializer;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 127
    check-cast v0, Lcom/sun/xml/txw2/output/TXWSerializer;

    .line 128
    .local v0, "txws":Lcom/sun/xml/txw2/output/TXWSerializer;
    iget-object v1, v0, Lcom/sun/xml/txw2/output/TXWSerializer;->txw:Lcom/sun/xml/txw2/TypedXmlWriter;

    invoke-interface {v1, p0, p1}, Lcom/sun/xml/txw2/TypedXmlWriter;->_element(Ljavax/xml/namespace/QName;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v1

    .line 130
    .end local v0    # "txws":Lcom/sun/xml/txw2/output/TXWSerializer;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sun/xml/txw2/ContainerElement;

    new-instance v2, Lcom/sun/xml/txw2/Document;

    invoke-direct {v2, p2}, Lcom/sun/xml/txw2/Document;-><init>(Lcom/sun/xml/txw2/output/XmlSerializer;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/xml/txw2/ContainerElement;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/ContainerElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/xml/txw2/ContainerElement;->_cast(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v1

    goto :goto_0
.end method

.method static getTagName(Ljava/lang/Class;)Ljavax/xml/namespace/QName;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, ""

    .line 61
    .local v1, "localName":Ljava/lang/String;
    const-string v2, "##default"

    .line 63
    .local v2, "nsUri":Ljava/lang/String;
    const-class v6, Lcom/sun/xml/txw2/annotation/XmlElement;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/txw2/annotation/XmlElement;

    .line 64
    .local v4, "xe":Lcom/sun/xml/txw2/annotation/XmlElement;
    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v4}, Lcom/sun/xml/txw2/annotation/XmlElement;->value()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {v4}, Lcom/sun/xml/txw2/annotation/XmlElement;->ns()Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 70
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 72
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 73
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .end local v0    # "idx":I
    :cond_2
    const-string v6, "##default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    .line 80
    .local v3, "pkg":Ljava/lang/Package;
    if-eqz v3, :cond_3

    .line 81
    const-class v6, Lcom/sun/xml/txw2/annotation/XmlNamespace;

    invoke-virtual {v3, v6}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/sun/xml/txw2/annotation/XmlNamespace;

    .line 82
    .local v5, "xn":Lcom/sun/xml/txw2/annotation/XmlNamespace;
    if-eqz v5, :cond_3

    .line 83
    invoke-interface {v5}, Lcom/sun/xml/txw2/annotation/XmlNamespace;->value()Ljava/lang/String;

    move-result-object v2

    .line 86
    .end local v3    # "pkg":Ljava/lang/Package;
    .end local v5    # "xn":Lcom/sun/xml/txw2/annotation/XmlNamespace;
    :cond_3
    const-string v6, "##default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 87
    const-string v2, ""

    .line 89
    :cond_4
    new-instance v6, Ljavax/xml/namespace/QName;

    invoke-direct {v6, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
