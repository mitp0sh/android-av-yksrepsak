.class public Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SendEmailRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private destination:Lcom/amazonaws/services/simpleemail/model/Destination;

.field private message:Lcom/amazonaws/services/simpleemail/model/Message;

.field private replyToAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private returnPath:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/simpleemail/model/Destination;Lcom/amazonaws/services/simpleemail/model/Message;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Lcom/amazonaws/services/simpleemail/model/Destination;
    .param p3, "message"    # Lcom/amazonaws/services/simpleemail/model/Message;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->source:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->destination:Lcom/amazonaws/services/simpleemail/model/Destination;

    .line 95
    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->message:Lcom/amazonaws/services/simpleemail/model/Message;

    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 373
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 389
    :cond_0
    :goto_0
    return v3

    .line 374
    :cond_1
    if-eqz p1, :cond_0

    .line 376
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 377
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;

    .line 379
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/Destination;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/Message;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 389
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 379
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 381
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 383
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 385
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 387
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->destination:Lcom/amazonaws/services/simpleemail/model/Destination;

    return-object v0
.end method

.method public getMessage()Lcom/amazonaws/services/simpleemail/model/Message;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->message:Lcom/amazonaws/services/simpleemail/model/Message;

    return-object v0
.end method

.method public getReplyToAddresses()Ljava/util/List;
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
    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getReturnPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->returnPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->source:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 360
    const/16 v1, 0x1f

    .line 361
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 363
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 364
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 365
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 366
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 367
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 368
    return v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/simpleemail/model/Destination;->hashCode()I

    move-result v2

    goto :goto_1

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/simpleemail/model/Message;->hashCode()I

    move-result v2

    goto :goto_2

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setDestination(Lcom/amazonaws/services/simpleemail/model/Destination;)V
    .locals 0
    .param p1, "destination"    # Lcom/amazonaws/services/simpleemail/model/Destination;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->destination:Lcom/amazonaws/services/simpleemail/model/Destination;

    .line 150
    return-void
.end method

.method public setMessage(Lcom/amazonaws/services/simpleemail/model/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/amazonaws/services/simpleemail/model/Message;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->message:Lcom/amazonaws/services/simpleemail/model/Message;

    .line 184
    return-void
.end method

.method public setReplyToAddresses(Ljava/util/Collection;)V
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
    .line 225
    .local p1, "replyToAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v0, "replyToAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public setReturnPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnPath"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->returnPath:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->source:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplyToAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDestination(Lcom/amazonaws/services/simpleemail/model/Destination;)Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .locals 0
    .param p1, "destination"    # Lcom/amazonaws/services/simpleemail/model/Destination;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->destination:Lcom/amazonaws/services/simpleemail/model/Destination;

    .line 164
    return-object p0
.end method

.method public withMessage(Lcom/amazonaws/services/simpleemail/model/Message;)Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .locals 0
    .param p1, "message"    # Lcom/amazonaws/services/simpleemail/model/Message;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->message:Lcom/amazonaws/services/simpleemail/model/Message;

    .line 198
    return-object p0
.end method

.method public withReplyToAddresses(Ljava/util/Collection;)Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "replyToAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    .line 276
    :goto_0
    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v0, "replyToAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->replyToAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withReplyToAddresses([Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .locals 6
    .param p1, "replyToAddresses"    # [Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->setReplyToAddresses(Ljava/util/Collection;)V

    .line 249
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

    .line 250
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withReturnPath(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .locals 0
    .param p1, "returnPath"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->returnPath:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public withSource(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->source:Ljava/lang/String;

    .line 130
    return-object p0
.end method
