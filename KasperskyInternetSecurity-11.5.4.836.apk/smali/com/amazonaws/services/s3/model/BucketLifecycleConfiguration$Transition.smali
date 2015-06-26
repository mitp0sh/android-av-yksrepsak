.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private days:I

.field private storageClass:Lcom/amazonaws/services/s3/model/StorageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    return v0
.end method

.method public getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->date:Ljava/util/Date;

    .line 345
    return-void
.end method

.method public setDays(I)V
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    .line 296
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 322
    return-void
.end method

.method public withDate(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->date:Ljava/util/Date;

    .line 360
    return-object p0
.end method

.method public withDays(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->days:I

    .line 314
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 337
    return-object p0
.end method
