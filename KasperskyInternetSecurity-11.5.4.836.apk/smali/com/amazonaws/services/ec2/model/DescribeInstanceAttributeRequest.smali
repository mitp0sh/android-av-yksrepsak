.class public Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeInstanceAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attribute:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/ec2/model/InstanceAttributeName;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "attribute"    # Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 89
    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 289
    :cond_0
    :goto_0
    return v3

    .line 280
    :cond_1
    if-eqz p1, :cond_0

    .line 282
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 283
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;

    .line 285
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 289
    goto :goto_0

    :cond_4
    move v1, v3

    .line 285
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 287
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 269
    const/16 v1, 0x1f

    .line 270
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 272
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 273
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 274
    return v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAttribute(Lcom/amazonaws/services/ec2/model/InstanceAttributeName;)V
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttribute(Lcom/amazonaws/services/ec2/model/InstanceAttributeName;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public withAttribute(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 122
    return-object p0
.end method
