.class public Lcom/amazonaws/services/simpleemail/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private body:Lcom/amazonaws/services/simpleemail/model/Body;

.field private subject:Lcom/amazonaws/services/simpleemail/model/Content;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/simpleemail/model/Content;Lcom/amazonaws/services/simpleemail/model/Body;)V
    .locals 0
    .param p1, "subject"    # Lcom/amazonaws/services/simpleemail/model/Content;
    .param p2, "body"    # Lcom/amazonaws/services/simpleemail/model/Body;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 53
    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 172
    :cond_0
    :goto_0
    return v3

    .line 163
    :cond_1
    if-eqz p1, :cond_0

    .line 165
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/Message;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/Message;

    .line 168
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/Message;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/Content;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/Body;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 172
    goto :goto_0

    :cond_4
    move v1, v3

    .line 168
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 170
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getBody()Lcom/amazonaws/services/simpleemail/model/Body;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    return-object v0
.end method

.method public getSubject()Lcom/amazonaws/services/simpleemail/model/Content;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 152
    const/16 v1, 0x1f

    .line 153
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 155
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 156
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 157
    return v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/simpleemail/model/Content;->hashCode()I

    move-result v2

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/simpleemail/model/Body;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setBody(Lcom/amazonaws/services/simpleemail/model/Body;)V
    .locals 0
    .param p1, "body"    # Lcom/amazonaws/services/simpleemail/model/Body;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    .line 114
    return-void
.end method

.method public setSubject(Lcom/amazonaws/services/simpleemail/model/Content;)V
    .locals 0
    .param p1, "subject"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBody(Lcom/amazonaws/services/simpleemail/model/Body;)Lcom/amazonaws/services/simpleemail/model/Message;
    .locals 0
    .param p1, "body"    # Lcom/amazonaws/services/simpleemail/model/Body;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->body:Lcom/amazonaws/services/simpleemail/model/Body;

    .line 128
    return-object p0
.end method

.method public withSubject(Lcom/amazonaws/services/simpleemail/model/Content;)Lcom/amazonaws/services/simpleemail/model/Message;
    .locals 0
    .param p1, "subject"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Message;->subject:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 94
    return-object p0
.end method
