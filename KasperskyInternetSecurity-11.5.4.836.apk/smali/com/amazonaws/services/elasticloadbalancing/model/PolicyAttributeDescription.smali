.class public Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
.super Ljava/lang/Object;
.source "PolicyAttributeDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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

    .line 133
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 143
    :cond_0
    :goto_0
    return v3

    .line 134
    :cond_1
    if-eqz p1, :cond_0

    .line 136
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 137
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;

    .line 139
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 143
    goto :goto_0

    :cond_4
    move v1, v3

    .line 139
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 141
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 123
    const/16 v1, 0x1f

    .line 124
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 126
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 127
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 128
    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->attributeName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->attributeValue:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->attributeName:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public withAttributeValue(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    .locals 0
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;->attributeValue:Ljava/lang/String;

    .line 99
    return-object p0
.end method
