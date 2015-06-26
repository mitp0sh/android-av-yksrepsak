.class public Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;
.super Lcom/kaspersky/kts/antitheft/ucp/UcpAction;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAccessKeyId:Ljava/lang/String;

.field private final mBucketName:Ljava/lang/String;

.field private final mCreationDate:Ljava/util/Date;

.field private mIsNew:Z

.field private final mKeyName:Ljava/lang/String;

.field private final mPhotoCount:I

.field private final mSecretAccessKey:Ljava/lang/String;

.field private final mSessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;-><init>(Ljava/lang/String;Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 22
    iput p2, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mPhotoCount:I

    .line 23
    iput-object p3, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mKeyName:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mBucketName:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mAccessKeyId:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mSecretAccessKey:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mSessionToken:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mIsNew:Z

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mCreationDate:Ljava/util/Date;

    .line 30
    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mCreationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mPhotoCount:I

    return v0
.end method

.method public getSecretAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mSecretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mIsNew:Z

    return v0
.end method

.method public setOld()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->mIsNew:Z

    .line 66
    return-void
.end method
