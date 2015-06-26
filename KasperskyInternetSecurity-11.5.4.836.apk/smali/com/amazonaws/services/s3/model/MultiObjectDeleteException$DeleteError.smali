.class public Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;
.super Ljava/lang/Object;
.source "MultiObjectDeleteException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteError"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->code:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->key:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->message:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->versionId:Ljava/lang/String;

    .line 87
    return-void
.end method
