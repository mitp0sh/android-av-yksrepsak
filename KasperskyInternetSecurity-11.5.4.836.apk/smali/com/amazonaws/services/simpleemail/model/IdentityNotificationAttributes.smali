.class public Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
.super Ljava/lang/Object;
.source "IdentityNotificationAttributes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bounceTopic:Ljava/lang/String;

.field private complaintTopic:Ljava/lang/String;

.field private forwardingEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 251
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    if-eqz p1, :cond_0

    .line 242
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;

    .line 245
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 251
    goto :goto_0

    :cond_5
    move v1, v3

    .line 245
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 247
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 249
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getBounceTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->bounceTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaintTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->complaintTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardingEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->forwardingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 228
    const/16 v1, 0x1f

    .line 229
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 231
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 232
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 233
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 234
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isForwardingEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->forwardingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBounceTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "bounceTopic"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->bounceTopic:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setComplaintTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "complaintTopic"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->complaintTopic:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setForwardingEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "forwardingEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->forwardingEnabled:Ljava/lang/Boolean;

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BounceTopic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getBounceTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComplaintTopic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->getComplaintTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForwardingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->isForwardingEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBounceTopic(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
    .locals 0
    .param p1, "bounceTopic"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->bounceTopic:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public withComplaintTopic(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
    .locals 0
    .param p1, "complaintTopic"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->complaintTopic:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public withForwardingEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
    .locals 0
    .param p1, "forwardingEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->forwardingEnabled:Ljava/lang/Boolean;

    .line 188
    return-object p0
.end method
