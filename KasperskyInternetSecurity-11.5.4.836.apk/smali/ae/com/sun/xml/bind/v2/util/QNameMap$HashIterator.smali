.class abstract Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;
.super Ljava/lang/Object;
.source "QNameMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/util/QNameMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 4

    .prologue
    .line 313
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.HashIterator<TE;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 315
    .local v2, "t":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    array-length v0, v2

    .line 316
    .local v0, "i":I
    const/4 v1, 0x0

    .line 317
    .local v1, "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget v3, p1, Lae/com/sun/xml/bind/v2/util/QNameMap;->size:I

    if-eqz v3, :cond_1

    .line 318
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    .line 320
    :cond_1
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 321
    iput v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->index:I

    .line 322
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 330
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    if-nez v0, :cond_0

    .line 331
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4

    .line 333
    :cond_0
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 334
    .local v2, "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->this$0:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v3, v4, Lae/com/sun/xml/bind/v2/util/QNameMap;->table:[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 335
    .local v3, "t":[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "[Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->index:I

    .line 336
    .local v1, "i":I
    :goto_0
    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 337
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v3, v1

    goto :goto_0

    .line 338
    :cond_1
    iput v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->index:I

    .line 339
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 340
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$HashIterator;, "Lae/com/sun/xml/bind/v2/util/QNameMap<TV;>.HashIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
