.class public final Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
.super Ljava/lang/Object;
.source "QNameMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/util/QNameMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field public final localName:Ljava/lang/String;

.field next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field public final nsUri:Ljava/lang/String;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "nsUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TV;",
            "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    .local p4, "v":Ljava/lang/Object;, "TV;"
    .local p5, "n":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    .line 377
    iput-object p5, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->next:Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 378
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    .line 379
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    .line 380
    iput p1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->hash:I

    .line 381
    return-void
.end method


# virtual methods
.method public createQName()Ljavax/xml/namespace/QName;
    .locals 3

    .prologue
    .line 387
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    const/4 v7, 0x0

    .line 402
    instance-of v8, p1, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    if-nez v8, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v0, p1

    .line 404
    check-cast v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 405
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    .line 406
    .local v1, "k1":Ljava/lang/String;
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    .line 407
    .local v2, "k2":Ljava/lang/String;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    .line 408
    .local v3, "k3":Ljava/lang/String;
    iget-object v4, v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    .line 409
    .local v4, "k4":Ljava/lang/String;
    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 411
    :cond_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 412
    .local v5, "v1":Ljava/lang/Object;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 413
    .local v6, "v2":Ljava/lang/Object;
    if-eq v5, v6, :cond_3

    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 414
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 421
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    .line 396
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->value:Ljava/lang/Object;

    .line 397
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    .local p0, "this":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;, "Lae/com/sun/xml/bind/v2/util/QNameMap$Entry<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->nsUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
