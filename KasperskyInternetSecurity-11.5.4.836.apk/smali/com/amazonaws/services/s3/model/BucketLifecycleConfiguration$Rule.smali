.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field private expirationDate:Ljava/util/Date;

.field private expirationInDays:I

.field private id:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    return-void
.end method


# virtual methods
.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationInDays()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    return-object v0
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationDate:Ljava/util/Date;

    .line 225
    return-void
.end method

.method public setExpirationInDays(I)V
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    .line 130
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->status:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)V
    .locals 0
    .param p1, "transition"    # Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 249
    return-void
.end method

.method public withExpirationDate(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationDate:Ljava/util/Date;

    .line 240
    return-object p0
.end method

.method public withExpirationInDays(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->expirationInDays:I

    .line 184
    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->prefix:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setStatus(Ljava/lang/String;)V

    .line 217
    return-object p0
.end method

.method public withTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 0
    .param p1, "transition"    # Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 265
    return-object p0
.end method
