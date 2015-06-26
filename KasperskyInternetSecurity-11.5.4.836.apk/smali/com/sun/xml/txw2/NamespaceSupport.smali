.class final Lcom/sun/xml/txw2/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/txw2/NamespaceSupport$Context;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;

.field public static final NSDECL:Ljava/lang/String; = "http://www.w3.org/xmlns/2000/"

.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private contextPos:I

.field private contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

.field private currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

.field private namespaceDeclUris:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/txw2/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p0}, Lcom/sun/xml/txw2/NamespaceSupport;->reset()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/sun/xml/txw2/NamespaceSupport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/NamespaceSupport;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/sun/xml/txw2/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-virtual {v0, p1, p2}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 480
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 481
    .local v2, "prefixes":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/sun/xml/txw2/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 482
    .local v0, "allPrefixes":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sun/xml/txw2/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNamespaceDeclUris()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method public popContext()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->clear()V

    .line 279
    iget v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    .line 280
    iget v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    if-gez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 284
    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "isAttribute"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 380
    iget-object v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-virtual {v1, p1, p3}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "myParts":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 382
    const/4 p2, 0x0

    .line 387
    .end local p2    # "parts":[Ljava/lang/String;
    :goto_0
    return-object p2

    .line 384
    .restart local p2    # "parts":[Ljava/lang/String;
    :cond_0
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    .line 385
    aget-object v1, v0, v3

    aput-object v1, p2, v3

    .line 386
    aget-object v1, v0, v4

    aput-object v1, p2, v4

    goto :goto_0
.end method

.method public pushContext()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    array-length v0, v2

    .line 240
    .local v0, "max":I
    iget v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    .line 243
    iget v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    if-lt v2, v0, :cond_0

    .line 244
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 245
    .local v1, "newContexts":[Lcom/sun/xml/txw2/NamespaceSupport$Context;
    iget-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    mul-int/lit8 v0, v0, 0x2

    .line 247
    iput-object v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 251
    .end local v1    # "newContexts":[Lcom/sun/xml/txw2/NamespaceSupport$Context;
    :cond_0
    iget-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v3, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 252
    iget-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v3, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    new-instance v4, Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-direct {v4, p0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;-><init>(Lcom/sun/xml/txw2/NamespaceSupport;)V

    iput-object v4, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    aput-object v4, v2, v3

    .line 257
    :cond_1
    iget v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    if-lez v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget-object v3, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v4, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->setParent(Lcom/sun/xml/txw2/NamespaceSupport$Context;)V

    .line 260
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 192
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 193
    iput-boolean v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->namespaceDeclUris:Z

    .line 194
    iput v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    .line 195
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    new-instance v2, Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;-><init>(Lcom/sun/xml/txw2/NamespaceSupport;)V

    iput-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setNamespaceDeclUris(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 522
    iget v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->namespaceDeclUris:Z

    if-ne p1, v0, :cond_1

    .line 533
    :goto_0
    return-void

    .line 526
    :cond_1
    iput-boolean p1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->namespaceDeclUris:Z

    .line 527
    if-eqz p1, :cond_2

    .line 528
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/xmlns/2000/"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contexts:[Lcom/sun/xml/txw2/NamespaceSupport$Context;

    iget v1, p0, Lcom/sun/xml/txw2/NamespaceSupport;->contextPos:I

    new-instance v2, Lcom/sun/xml/txw2/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;-><init>(Lcom/sun/xml/txw2/NamespaceSupport;)V

    iput-object v2, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport;->currentContext:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
