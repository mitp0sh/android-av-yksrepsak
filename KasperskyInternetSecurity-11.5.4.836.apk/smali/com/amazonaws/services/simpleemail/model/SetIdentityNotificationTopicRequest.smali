.class public Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetIdentityNotificationTopicRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private identity:Ljava/lang/String;

.field private notificationType:Ljava/lang/String;

.field private snsTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 272
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 284
    :cond_0
    :goto_0
    return v3

    .line 273
    :cond_1
    if-eqz p1, :cond_0

    .line 275
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;

    .line 278
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 284
    goto :goto_0

    :cond_5
    move v1, v3

    .line 278
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 280
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 282
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->notificationType:Ljava/lang/String;

    return-object v0
.end method

.method public getSnsTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->snsTopic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 261
    const/16 v1, 0x1f

    .line 262
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 264
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 265
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 266
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 267
    return v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->identity:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setNotificationType(Lcom/amazonaws/services/simpleemail/model/NotificationType;)V
    .locals 1
    .param p1, "notificationType"    # Lcom/amazonaws/services/simpleemail/model/NotificationType;

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->notificationType:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setNotificationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->notificationType:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSnsTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "snsTopic"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->snsTopic:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsTopic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->getSnsTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withIdentity(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->identity:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public withNotificationType(Lcom/amazonaws/services/simpleemail/model/NotificationType;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
    .locals 1
    .param p1, "notificationType"    # Lcom/amazonaws/services/simpleemail/model/NotificationType;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->notificationType:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withNotificationType(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
    .locals 0
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->notificationType:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public withSnsTopic(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
    .locals 0
    .param p1, "snsTopic"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;->snsTopic:Ljava/lang/String;

    .line 236
    return-object p0
.end method
