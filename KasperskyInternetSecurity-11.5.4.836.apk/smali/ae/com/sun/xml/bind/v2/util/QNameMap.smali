.class public final Lae/com/sun/xml/bind/v2/util/QNameMap;
.super Ljava/lang/Object;
.source "QNameMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/util/QNameMap$1;,
        Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;,
        Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;,
        Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;,
        Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient size:I

.field transient table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    const/16 v1, 0x10

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-array v0, v1, [Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet:Ljava/util/Set;

    .line 106
    const/16 v0, 0xc

    iput v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->threshold:I

    .line 107
    new-array v0, v1, [Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 109
    return-void
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/util/QNameMap;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/util/QNameMap;

    .prologue
    .line 63
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/util/QNameMap;Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/util/QNameMap;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method private addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 7
    .param p1, "hash"    # I
    .param p2, "nsUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p5, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    aget-object v5, v0, p5

    .line 240
    .local v5, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;)V

    aput-object v0, v6, p5

    .line 241
    iget v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->size:I

    iget v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->threshold:I

    if-lt v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->resize(I)V

    .line 243
    :cond_0
    return-void
.end method

.method private getEntry(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .locals 4
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    sget-boolean v3, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 469
    :cond_0
    sget-boolean v3, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eq p2, v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 471
    :cond_1
    invoke-static {p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->hash(Ljava/lang/String;)I

    move-result v1

    .line 472
    .local v1, "hash":I
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    array-length v3, v3

    invoke-static {v1, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->indexFor(II)I

    move-result v2

    .line 473
    .local v2, "i":I
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    aget-object v0, v3, v2

    .line 474
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    if-ne p2, v3, :cond_2

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    if-eq p1, v3, :cond_3

    .line 475
    :cond_2
    iget-object v0, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    goto :goto_0

    .line 476
    :cond_3
    return-object v0
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 2
    .param p0, "x"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 218
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 219
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 220
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 221
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 222
    return v0
.end method

.method private static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    .prologue
    .line 229
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap$EntryIterator;-><init>(Lae/com/sun/xml/bind/v2/util/QNameMap;Lae/com/sun/xml/bind/v2/util/QNameMap$1;)V

    return-object v0
.end method

.method private resize(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .prologue
    .line 252
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 253
    .local v2, "oldTable":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    array-length v1, v2

    .line 254
    .local v1, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 255
    const v3, 0x7fffffff

    iput v3, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->threshold:I

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    new-array v0, p1, [Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 260
    .local v0, "newTable":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->transfer([Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;)V

    .line 261
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 262
    iput p1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->threshold:I

    goto :goto_0
.end method

.method private transfer([Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    .local p1, "newTable":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 270
    .local v5, "src":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    array-length v3, p1

    .line 271
    .local v3, "newCapacity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 272
    aget-object v0, v5, v2

    .line 273
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    if-eqz v0, :cond_1

    .line 274
    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 276
    :cond_0
    iget-object v4, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 277
    .local v4, "next":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget v6, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->hash:I

    invoke-static {v6, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->indexFor(II)I

    move-result v1

    .line 278
    .local v1, "i":I
    aget-object v6, p1, v1

    iput-object v6, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 279
    aput-object v0, p1, v1

    .line 280
    move-object v0, v4

    .line 281
    if-nez v0, :cond_0

    .line 271
    .end local v1    # "i":I
    .end local v4    # "next":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 349
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet:Ljava/util/Set;

    .line 433
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;>;"
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap$EntrySet;-><init>(Lae/com/sun/xml/bind/v2/util/QNameMap;Lae/com/sun/xml/bind/v2/util/QNameMap$1;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    move-result-object v0

    .line 163
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 164
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 295
    .local v1, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    if-eqz v1, :cond_0

    .line 298
    .end local v1    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :goto_1
    return-object v1

    .line 294
    .restart local v1    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 357
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    iget v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 303
    .local v2, "r":Ljava/util/Set;, "Ljava/util/Set<Ljavax/xml/namespace/QName;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 304
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->createQName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :cond_0
    return-object v2
.end method

.method public put(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    sget-boolean v0, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    sget-boolean v0, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_1
    sget-boolean v0, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eq p2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_2
    sget-boolean v0, Lae/com/sun/xml/bind/v2/util/QNameMap;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_3
    invoke-static {p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->hash(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "hash":I
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    array-length v0, v0

    invoke-static {v1, v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->indexFor(II)I

    move-result v5

    .line 132
    .local v5, "i":I
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    aget-object v6, v0, v5

    .local v6, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :goto_0
    if-eqz v6, :cond_5

    .line 133
    iget v0, v6, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->hash:I

    if-ne v0, v1, :cond_4

    iget-object v0, v6, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    if-ne p2, v0, :cond_4

    iget-object v0, v6, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    if-ne p1, v0, :cond_4

    .line 134
    iput-object p3, v6, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    .line 141
    :goto_1
    return-void

    .line 132
    :cond_4
    iget-object v6, v6, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 139
    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public putAll(Lae/com/sun/xml/bind/v2/util/QNameMap;)Lae/com/sun/xml/bind/v2/util/QNameMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<+TV;>;)",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    .local p1, "map":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<+TV;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->size()I

    move-result v3

    .line 190
    .local v3, "numKeysToBeAdded":I
    if-nez v3, :cond_1

    .line 207
    :cond_0
    return-object p0

    .line 194
    :cond_1
    iget v5, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->threshold:I

    if-le v3, v5, :cond_4

    .line 195
    move v4, v3

    .line 196
    .local v4, "targetCapacity":I
    const/high16 v5, 0x40000000    # 2.0f

    if-le v4, v5, :cond_2

    .line 197
    const/high16 v4, 0x40000000    # 2.0f

    .line 198
    :cond_2
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    array-length v2, v5

    .line 199
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 200
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_3
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    array-length v5, v5

    if-le v2, v5, :cond_4

    .line 202
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->resize(I)V

    .line 205
    .end local v2    # "newCapacity":I
    .end local v4    # "targetCapacity":I
    :cond_4
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 206
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<+TV;>;"
    iget-object v5, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    iget-object v6, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    iget v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 481
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 485
    .local v1, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 486
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    :cond_0
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 492
    .end local v1    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    :cond_1
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
