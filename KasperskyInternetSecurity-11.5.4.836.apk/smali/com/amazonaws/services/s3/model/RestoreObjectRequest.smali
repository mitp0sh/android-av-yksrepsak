.class public Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RestoreObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private expirationInDays:I

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expirationInDays"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 90
    iput p3, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    .line 91
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationInDays()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setExpirationInDays(I)V
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    .line 169
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public withExpirationInDays(I)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    .line 185
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 160
    return-object p0
.end method
