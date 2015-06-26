.class public Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;
.super Ljava/lang/Object;
.source "DeleteObjectsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletedObject"
.end annotation


# instance fields
.field private deleteMarker:Z

.field private deleteMarkerVersionId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteMarkerVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarkerVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteMarker()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarker:Z

    return v0
.end method

.method public setDeleteMarker(Z)V
    .locals 0
    .param p1, "deleteMarker"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarker:Z

    .line 87
    return-void
.end method

.method public setDeleteMarkerVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteMarkerVersionId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->deleteMarkerVersionId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->key:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->versionId:Ljava/lang/String;

    .line 76
    return-void
.end method
