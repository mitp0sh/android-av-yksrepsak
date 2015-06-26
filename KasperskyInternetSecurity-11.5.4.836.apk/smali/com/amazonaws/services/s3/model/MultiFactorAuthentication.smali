.class public Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
.super Ljava/lang/Object;
.source "MultiFactorAuthentication.java"


# instance fields
.field private deviceSerialNumber:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceSerialNumber"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->deviceSerialNumber:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->token:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->deviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceSerialNumber"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->deviceSerialNumber:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->token:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public withDeviceSerialNumber(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 0
    .param p1, "deviceSerialNumber"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->setDeviceSerialNumber(Ljava/lang/String;)V

    .line 113
    return-object p0
.end method

.method public withToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->setToken(Ljava/lang/String;)V

    .line 161
    return-object p0
.end method
