.class public Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;
.super Ljava/lang/Object;
.source "ValidationEventLocatorImpl.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEventLocator;


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private node:Lorg/w3c/dom/Node;

.field private object:Ljava/lang/Object;

.field private offset:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 171
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 172
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 173
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 174
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 175
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "_object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 171
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 172
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 173
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 174
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 175
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "_object"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "_node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 171
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 172
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 173
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 174
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 175
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "_node"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 3
    .param p1, "loc"    # Lorg/xml/sax/Locator;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 171
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 172
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 173
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 174
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 175
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "loc"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 95
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 96
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 171
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 172
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 173
    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 174
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 175
    iput-object v1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "e"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 118
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 119
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    iput v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 120
    return-void
.end method

.method private static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "systemId"    # Ljava/lang/String;

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    return v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    return-object v0
.end method

.method public setColumnNumber(I)V
    .locals 0
    .param p1, "_columnNumber"    # I

    .prologue
    .line 239
    iput p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 240
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "_lineNumber"    # I

    .prologue
    .line 223
    iput p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 224
    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "_node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 271
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 272
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "_object"    # Ljava/lang/Object;

    .prologue
    .line 255
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "_offset"    # I

    .prologue
    .line 207
    iput p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 208
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0
    .param p1, "_url"    # Ljava/net/URL;

    .prologue
    .line 191
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    const-string v0, "[node={0},object={1},url={2},line={3},col={4},offset={5}]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->getObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->getColumnNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;->getOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
