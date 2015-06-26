.class public Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "BundleInstanceRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private instanceId:Ljava/lang/String;

.field private storage:Lcom/amazonaws/services/ec2/model/Storage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/ec2/model/Storage;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/amazonaws/services/ec2/model/Storage;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->instanceId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->storage:Lcom/amazonaws/services/ec2/model/Storage;

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

    .line 159
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 169
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    .line 162
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 163
    check-cast v0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;

    .line 165
    .local v0, "other":Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/Storage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 169
    goto :goto_0

    :cond_4
    move v1, v3

    .line 165
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 167
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Lcom/amazonaws/services/ec2/model/Storage;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 149
    const/16 v1, 0x1f

    .line 150
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 152
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 154
    return v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/Storage;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->instanceId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setStorage(Lcom/amazonaws/services/ec2/model/Storage;)V
    .locals 0
    .param p1, "storage"    # Lcom/amazonaws/services/ec2/model/Storage;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->instanceId:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public withStorage(Lcom/amazonaws/services/ec2/model/Storage;)Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;
    .locals 0
    .param p1, "storage"    # Lcom/amazonaws/services/ec2/model/Storage;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    .line 125
    return-object p0
.end method
