.class public Lcom/amazonaws/services/simpleemail/model/Body;
.super Ljava/lang/Object;
.source "Body.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private html:Lcom/amazonaws/services/simpleemail/model/Content;

.field private text:Lcom/amazonaws/services/simpleemail/model/Content;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/simpleemail/model/Content;)V
    .locals 0
    .param p1, "text"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Body;->text:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 193
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    .line 186
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/Body;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/Body;

    .line 189
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/Body;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/Content;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpleemail/model/Content;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 193
    goto :goto_0

    :cond_4
    move v1, v3

    .line 189
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 191
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getHtml()Lcom/amazonaws/services/simpleemail/model/Content;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/Body;->html:Lcom/amazonaws/services/simpleemail/model/Content;

    return-object v0
.end method

.method public getText()Lcom/amazonaws/services/simpleemail/model/Content;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/Body;->text:Lcom/amazonaws/services/simpleemail/model/Content;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 173
    const/16 v1, 0x1f

    .line 174
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 176
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 177
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 178
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/simpleemail/model/Content;->hashCode()I

    move-result v2

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/simpleemail/model/Content;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setHtml(Lcom/amazonaws/services/simpleemail/model/Content;)V
    .locals 0
    .param p1, "html"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Body;->html:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 131
    return-void
.end method

.method public setText(Lcom/amazonaws/services/simpleemail/model/Content;)V
    .locals 0
    .param p1, "text"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Body;->text:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withHtml(Lcom/amazonaws/services/simpleemail/model/Content;)Lcom/amazonaws/services/simpleemail/model/Body;
    .locals 0
    .param p1, "html"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Body;->html:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 149
    return-object p0
.end method

.method public withText(Lcom/amazonaws/services/simpleemail/model/Content;)Lcom/amazonaws/services/simpleemail/model/Body;
    .locals 0
    .param p1, "text"    # Lcom/amazonaws/services/simpleemail/model/Content;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/Body;->text:Lcom/amazonaws/services/simpleemail/model/Content;

    .line 103
    return-object p0
.end method
