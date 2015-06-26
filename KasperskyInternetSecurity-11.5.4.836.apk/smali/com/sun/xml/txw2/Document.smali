.class public final Lcom/sun/xml/txw2/Document;
.super Ljava/lang/Object;
.source "Document.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final MAGIC:C


# instance fields
.field private activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;

.field private current:Lcom/sun/xml/txw2/Content;

.field private final datatypeWriters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/sun/xml/txw2/DatatypeWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;

.field private iota:I

.field private final out:Lcom/sun/xml/txw2/output/XmlSerializer;

.field private prefixIota:I

.field private final prefixSeed:Ljava/lang/StringBuilder;

.field private started:Z

.field private final visitor:Lcom/sun/xml/txw2/ContentVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/sun/xml/txw2/Document;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/xml/txw2/Document;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/xml/txw2/output/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lcom/sun/xml/txw2/output/XmlSerializer;

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v4, p0, Lcom/sun/xml/txw2/Document;->started:Z

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/xml/txw2/Document;->current:Lcom/sun/xml/txw2/Content;

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/txw2/Document;->datatypeWriters:Ljava/util/Map;

    .line 78
    const/4 v2, 0x1

    iput v2, p0, Lcom/sun/xml/txw2/Document;->iota:I

    .line 83
    new-instance v2, Lcom/sun/xml/txw2/NamespaceSupport;

    invoke-direct {v2}, Lcom/sun/xml/txw2/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;

    .line 176
    new-instance v2, Lcom/sun/xml/txw2/Document$1;

    invoke-direct {v2, p0}, Lcom/sun/xml/txw2/Document$1;-><init>(Lcom/sun/xml/txw2/Document;)V

    iput-object v2, p0, Lcom/sun/xml/txw2/Document;->visitor:Lcom/sun/xml/txw2/ContentVisitor;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ns"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/xml/txw2/Document;->prefixSeed:Ljava/lang/StringBuilder;

    .line 288
    iput v4, p0, Lcom/sun/xml/txw2/Document;->prefixIota:I

    .line 93
    iput-object p1, p0, Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;

    .line 94
    sget-object v2, Lcom/sun/xml/txw2/DatatypeWriter;->BUILTIN:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/xml/txw2/DatatypeWriter;

    .line 95
    .local v0, "dw":Lcom/sun/xml/txw2/DatatypeWriter;
    iget-object v2, p0, Lcom/sun/xml/txw2/Document;->datatypeWriters:Ljava/util/Map;

    invoke-interface {v0}, Lcom/sun/xml/txw2/DatatypeWriter;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    .end local v0    # "dw":Lcom/sun/xml/txw2/DatatypeWriter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceDecl;
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceDecl;)Lcom/sun/xml/txw2/NamespaceDecl;
    .locals 0
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;
    .param p1, "x1"    # Lcom/sun/xml/txw2/NamespaceDecl;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sun/xml/txw2/Document;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sun/xml/txw2/Document;->fixPrefix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/xml/txw2/Document;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sun/xml/txw2/Document;->started:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sun/xml/txw2/Document;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sun/xml/txw2/Document;->started:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sun/xml/txw2/Document;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sun/xml/txw2/Document;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sun/xml/txw2/Document;->newPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fixPrefix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 307
    sget-boolean v6, Lcom/sun/xml/txw2/Document;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 311
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-nez v6, :cond_3

    .line 316
    :cond_1
    if-ne v0, v1, :cond_4

    .line 342
    :cond_2
    return-object p1

    .line 311
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_4
    if-ge v0, v1, :cond_2

    .line 320
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 321
    .local v5, "uriIdx":C
    iget-object v3, p0, Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;

    .line 322
    .local v3, "ns":Lcom/sun/xml/txw2/NamespaceDecl;
    :goto_1
    if-eqz v3, :cond_5

    iget-char v6, v3, Lcom/sun/xml/txw2/NamespaceDecl;->uniqueId:C

    if-eq v6, v5, :cond_5

    .line 323
    iget-object v3, v3, Lcom/sun/xml/txw2/NamespaceDecl;->next:Lcom/sun/xml/txw2/NamespaceDecl;

    goto :goto_1

    .line 324
    :cond_5
    if-nez v3, :cond_6

    .line 325
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected use of prefixes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    :cond_6
    const/4 v2, 0x2

    .line 328
    .local v2, "length":I
    iget-object v4, v3, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    .line 329
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    .line 330
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v7, v0, 0x2

    if-le v6, v7, :cond_7

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_8

    .line 331
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected use of prefixes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 332
    :cond_8
    const/4 v2, 0x3

    .line 335
    :cond_9
    add-int v6, v0, v2

    invoke-virtual {p1, v0, v6, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/2addr v1, v6

    .line 338
    :goto_2
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_4

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private newPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->prefixSeed:Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 295
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->prefixSeed:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/xml/txw2/Document;->prefixIota:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/xml/txw2/Document;->prefixIota:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->prefixSeed:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDatatypeWriter(Lcom/sun/xml/txw2/DatatypeWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/xml/txw2/DatatypeWriter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "dw":Lcom/sun/xml/txw2/DatatypeWriter;, "Lcom/sun/xml/txw2/DatatypeWriter<*>;"
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->datatypeWriters:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sun/xml/txw2/DatatypeWriter;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method assignNewId()C
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lcom/sun/xml/txw2/Document;->iota:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/xml/txw2/Document;->iota:I

    int-to-char v0, v0

    return v0
.end method

.method flush()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;

    invoke-interface {v0}, Lcom/sun/xml/txw2/output/XmlSerializer;->flush()V

    .line 100
    return-void
.end method

.method run()V
    .locals 2

    .prologue
    .line 128
    :goto_0
    iget-object v1, p0, Lcom/sun/xml/txw2/Document;->current:Lcom/sun/xml/txw2/Content;

    invoke-virtual {v1}, Lcom/sun/xml/txw2/Content;->getNext()Lcom/sun/xml/txw2/Content;

    move-result-object v0

    .line 129
    .local v0, "next":Lcom/sun/xml/txw2/Content;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/xml/txw2/Content;->isReadyToCommit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/sun/xml/txw2/Document;->visitor:Lcom/sun/xml/txw2/ContentVisitor;

    invoke-virtual {v0, v1}, Lcom/sun/xml/txw2/Content;->accept(Lcom/sun/xml/txw2/ContentVisitor;)V

    .line 132
    invoke-virtual {v0}, Lcom/sun/xml/txw2/Content;->written()V

    .line 133
    iput-object v0, p0, Lcom/sun/xml/txw2/Document;->current:Lcom/sun/xml/txw2/Content;

    goto :goto_0
.end method

.method setFirstContent(Lcom/sun/xml/txw2/Content;)V
    .locals 1
    .param p1, "c"    # Lcom/sun/xml/txw2/Content;

    .prologue
    .line 103
    sget-boolean v0, Lcom/sun/xml/txw2/Document;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->current:Lcom/sun/xml/txw2/Content;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lcom/sun/xml/txw2/StartDocument;

    invoke-direct {v0}, Lcom/sun/xml/txw2/StartDocument;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/Document;->current:Lcom/sun/xml/txw2/Content;

    .line 105
    iget-object v0, p0, Lcom/sun/xml/txw2/Document;->current:Lcom/sun/xml/txw2/Content;

    invoke-virtual {v0, p0, p1}, Lcom/sun/xml/txw2/Content;->setNext(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/Content;)V

    .line 106
    return-void
.end method

.method writeValue(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "nsResolver"    # Lcom/sun/xml/txw2/NamespaceResolver;
    .param p3, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "argument contains null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    :cond_0
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 148
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 149
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {p0, v5, p2, p3}, Lcom/sun/xml/txw2/Document;->writeValue(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "o":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v6, p1, Ljava/lang/Iterable;

    if-eqz v6, :cond_2

    .line 153
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 154
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v5, p2, p3}, Lcom/sun/xml/txw2/Document;->writeValue(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 158
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 159
    const/16 v6, 0x20

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 162
    .local v1, "c":Ljava/lang/Class;
    :goto_2
    if-eqz v1, :cond_6

    .line 163
    iget-object v6, p0, Lcom/sun/xml/txw2/Document;->datatypeWriters:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/xml/txw2/DatatypeWriter;

    .line 164
    .local v2, "dw":Lcom/sun/xml/txw2/DatatypeWriter;
    if-eqz v2, :cond_5

    .line 165
    invoke-interface {v2, p1, p2, p3}, Lcom/sun/xml/txw2/DatatypeWriter;->print(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    .line 173
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "dw":Lcom/sun/xml/txw2/DatatypeWriter;
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_3
    return-void

    .line 168
    .restart local v1    # "c":Ljava/lang/Class;
    .restart local v2    # "dw":Lcom/sun/xml/txw2/DatatypeWriter;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 169
    goto :goto_2

    .line 172
    .end local v2    # "dw":Lcom/sun/xml/txw2/DatatypeWriter;
    :cond_6
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
