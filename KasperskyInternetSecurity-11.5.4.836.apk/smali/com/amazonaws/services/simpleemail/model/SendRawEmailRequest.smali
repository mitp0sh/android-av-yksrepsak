.class public Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SendRawEmailRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private destinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawMessage:Lcom/amazonaws/services/simpleemail/model/RawMessage;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/simpleemail/model/RawMessage;)V
    .locals 0
    .param p1, "rawMessage"    # Lcom/amazonaws/services/simpleemail/model/RawMessage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->rawMessage:Lcom/amazonaws/services/simpleemail/model/RawMessage;

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 355
    :cond_0
    :goto_0
    return v3

    .line 344
    :cond_1
    if-eqz p1, :cond_0

    .line 346
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 347
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;

    .line 349
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/RawMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 355
    goto :goto_0

    :cond_5
    move v1, v3

    .line 349
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 351
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 353
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDestinations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    return-object v0
.end method

.method public getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->rawMessage:Lcom/amazonaws/services/simpleemail/model/RawMessage;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->source:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 332
    const/16 v1, 0x1f

    .line 333
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 335
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 336
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 337
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 338
    return v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/simpleemail/model/RawMessage;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDestinations(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "destinations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v0, "destinationsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    goto :goto_0
.end method

.method public setRawMessage(Lcom/amazonaws/services/simpleemail/model/RawMessage;)V
    .locals 0
    .param p1, "rawMessage"    # Lcom/amazonaws/services/simpleemail/model/RawMessage;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->rawMessage:Lcom/amazonaws/services/simpleemail/model/RawMessage;

    .line 277
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->source:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destinations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RawMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDestinations(Ljava/util/Collection;)Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "destinations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    .line 226
    :goto_0
    return-object p0

    .line 221
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v0, "destinationsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->destinations:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDestinations([Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    .locals 6
    .param p1, "destinations"    # [Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->setDestinations(Ljava/util/Collection;)V

    .line 201
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 202
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withRawMessage(Lcom/amazonaws/services/simpleemail/model/RawMessage;)Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    .locals 0
    .param p1, "rawMessage"    # Lcom/amazonaws/services/simpleemail/model/RawMessage;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->rawMessage:Lcom/amazonaws/services/simpleemail/model/RawMessage;

    .line 307
    return-object p0
.end method

.method public withSource(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->source:Ljava/lang/String;

    .line 156
    return-object p0
.end method
