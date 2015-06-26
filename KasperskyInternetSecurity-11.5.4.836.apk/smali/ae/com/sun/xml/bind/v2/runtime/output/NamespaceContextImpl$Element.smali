.class public final Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
.super Ljava/lang/Object;
.source "NamespaceContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Element"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private baseIndex:I

.field public final context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

.field private defaultPrefixIndex:I

.field private final depth:I

.field private elementLocalName:Ljava/lang/String;

.field private elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private elementNamePrefix:I

.field private innerPeer:Ljava/lang/Object;

.field private next:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

.field private oldDefaultNamespaceUriIndex:I

.field private outerPeer:Ljava/lang/Object;

.field private final prev:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)V
    .locals 1
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .param p3, "prev"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .prologue
    .line 441
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .line 443
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->prev:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 444
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->depth:I

    .line 445
    return-void

    .line 444
    :cond_0
    iget v0, p3, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->depth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .param p4, "x3"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$1;

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)V

    return-void
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .prologue
    .line 388
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->defaultPrefixIndex:I

    return v0
.end method

.method static synthetic access$102(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;I)I
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .param p1, "x1"    # I

    .prologue
    .line 388
    iput p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->defaultPrefixIndex:I

    return p1
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .prologue
    .line 388
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I

    return v0
.end method

.method static synthetic access$202(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;I)I
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .param p1, "x1"    # I

    .prologue
    .line 388
    iput p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I

    return p1
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .prologue
    .line 388
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    return v0
.end method

.method static synthetic access$400(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .prologue
    .line 388
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;

    return-object v0
.end method

.method private onPushed()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, -0x1

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->defaultPrefixIndex:I

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I

    .line 476
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$600(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)I

    move-result v0

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    .line 477
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    # setter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    invoke-static {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$702(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 478
    return-void
.end method


# virtual methods
.method public final count()I
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$600(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)I

    move-result v0

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public endElement(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V
    .locals 2
    .param p1, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementNamePrefix:I

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getBase()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    return v0
.end method

.method public getInnerPeer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->innerPeer:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNsUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->nsUris:[Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$900(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOuterPeer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->outerPeer:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->prev:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    return-object v0
.end method

.method public final getPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->prefixes:[Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$800(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isRootElement()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->depth:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pop()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .locals 3

    .prologue
    .line 463
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I

    if-ltz v0, :cond_0

    .line 465
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->owner:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$500(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->knownUri2prefixIndexMap:[I

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->oldDefaultNamespaceUriIndex:I

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->defaultPrefixIndex:I

    aput v2, v0, v1

    .line 467
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->baseIndex:I

    # setter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->size:I
    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$602(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;I)I

    .line 468
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->prev:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    # setter for: Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->current:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->access$702(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->innerPeer:Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->outerPeer:Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->prev:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    return-object v0
.end method

.method public push()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->next:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->this$0:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->context:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-direct {v0, v1, v2, p0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->next:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 458
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->next:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->onPushed()V

    .line 459
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->next:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    return-object v0
.end method

.method public setTagName(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "outerPeer"    # Ljava/lang/Object;

    .prologue
    .line 481
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 482
    :cond_0
    iput p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementNamePrefix:I

    .line 483
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 485
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->outerPeer:Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public setTagName(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "outerPeer"    # Ljava/lang/Object;

    .prologue
    .line 489
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 491
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->outerPeer:Ljava/lang/Object;

    .line 492
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .param p2, "innerPeer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 495
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->innerPeer:Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementNamePrefix:I

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->elementLocalName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(ILjava/lang/String;)V

    goto :goto_0
.end method
