.class public Lae/com/sun/xml/bind/util/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field data:[Ljava/lang/String;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 115
    return-void
.end method

.method private badIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v4, 0x0

    .line 619
    if-gtz p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 624
    :cond_2
    const/16 v0, 0x19

    .line 632
    .local v0, "max":I
    :goto_1
    mul-int/lit8 v2, p1, 0x5

    if-ge v0, v2, :cond_4

    .line 633
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 626
    .end local v0    # "max":I
    :cond_3
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x5

    if-ge v2, v3, :cond_0

    .line 630
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v2

    .restart local v0    # "max":I
    goto :goto_1

    .line 636
    :cond_4
    new-array v1, v0, [Ljava/lang/String;

    .line 637
    .local v1, "newData":[Ljava/lang/String;
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-lez v2, :cond_5

    .line 638
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    iget v3, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v3, v3, 0x5

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_5
    iput-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 434
    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/util/AttributesImpl;->ensureCapacity(I)V

    .line 435
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    .line 436
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 437
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 438
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 439
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    .line 440
    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    .line 441
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    .line 386
    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 273
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 274
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    div-int/lit8 v2, v0, 0x5

    .line 278
    :goto_1
    return v2

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 278
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 240
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 241
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 242
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    div-int/lit8 v2, v0, 0x5

    .line 246
    :goto_1
    return v2

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 246
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 253
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v0, v1, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 255
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 256
    div-int/lit8 v1, v0, 0x5

    .line 259
    :goto_1
    return v1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, -0x5

    goto :goto_0

    .line 259
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 164
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 200
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 314
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 315
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 316
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    .line 320
    :goto_1
    return-object v2

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 320
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 294
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 295
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 296
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    .line 300
    :goto_1
    return-object v2

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 300
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 146
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 217
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 356
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 357
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 358
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    .line 362
    :goto_1
    return-object v2

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 362
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 336
    iget v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    .line 337
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 338
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    .line 342
    :goto_1
    return-object v2

    .line 337
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 342
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeAttribute(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 490
    if-ltz p1, :cond_1

    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v1, :cond_1

    .line 491
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 492
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v4, p1, 0x5

    iget v5, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    :cond_0
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 p1, v1, 0x5

    .line 496
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aput-object v6, v1, p1

    .line 497
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    .line 498
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    aput-object v6, v1, p1

    .line 499
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    .line 500
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    aput-object v6, v1, p1

    .line 501
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .prologue
    .line 468
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 469
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 470
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 471
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    .line 472
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    .line 473
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 399
    invoke-virtual {p0}, Lae/com/sun/xml/bind/util/AttributesImpl;->clear()V

    .line 400
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    iput v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    .line 401
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-lez v1, :cond_0

    .line 402
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 405
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 406
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 407
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 408
    iget-object v1, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setLocalName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 540
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 541
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setQName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "qName"    # Ljava/lang/String;

    .prologue
    .line 560
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 561
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setType(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 579
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 580
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 520
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 598
    if-ltz p1, :cond_0

    iget v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lae/com/sun/xml/bind/util/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/util/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method
