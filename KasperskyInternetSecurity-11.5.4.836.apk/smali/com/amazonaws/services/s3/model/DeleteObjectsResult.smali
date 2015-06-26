.class public Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.super Ljava/lang/Object;
.source "DeleteObjectsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;
    }
.end annotation


# instance fields
.field private final deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "deletedObjects":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public getDeletedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    return-object v0
.end method
