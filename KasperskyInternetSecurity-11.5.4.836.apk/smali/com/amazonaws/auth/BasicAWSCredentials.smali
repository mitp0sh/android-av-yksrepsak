.class public Lcom/amazonaws/auth/BasicAWSCredentials;
.super Ljava/lang/Object;
.source "BasicAWSCredentials.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentials;


# instance fields
.field private final accessKey:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    if-nez p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Secret key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->accessKey:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->secretKey:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method
