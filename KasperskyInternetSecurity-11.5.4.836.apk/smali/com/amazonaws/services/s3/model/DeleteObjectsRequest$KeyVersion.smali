.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
.super Ljava/lang/Object;
.source "DeleteObjectsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVersion"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->key:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->version:Ljava/lang/String;

    .line 281
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->version:Ljava/lang/String;

    return-object v0
.end method
