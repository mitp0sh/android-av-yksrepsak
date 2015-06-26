.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# static fields
.field public static final DEFAULT_PATH_STYLE_ACCESS:Z


# instance fields
.field private pathStyleAccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1
    .param p1, "other"    # Lcom/amazonaws/services/s3/S3ClientOptions;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 31
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isPathStyleAccess()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    return v0
.end method

.method public setPathStyleAccess(Z)V
    .locals 0
    .param p1, "pathStyleAccess"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 77
    return-void
.end method

.method public withPathStyleAccess(Z)Lcom/amazonaws/services/s3/S3ClientOptions;
    .locals 0
    .param p1, "pathStyleAccess"    # Z

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;->setPathStyleAccess(Z)V

    .line 103
    return-object p0
.end method
