.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    }
.end annotation


# static fields
.field public static final DISABLED:Ljava/lang/String; = "Disabled"

.field public static final ENABLED:Ljava/lang/String; = "Enabled"


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->rules:Ljava/util/List;

    .line 82
    return-void
.end method


# virtual methods
.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->rules:Ljava/util/List;

    return-object v0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->rules:Ljava/util/List;

    .line 54
    return-void
.end method

.method public withRules(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->setRules(Ljava/util/List;)V

    .line 62
    return-object p0
.end method

.method public varargs withRules([Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 1
    .param p1, "rules"    # [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .prologue
    .line 70
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->setRules(Ljava/util/List;)V

    .line 71
    return-object p0
.end method
