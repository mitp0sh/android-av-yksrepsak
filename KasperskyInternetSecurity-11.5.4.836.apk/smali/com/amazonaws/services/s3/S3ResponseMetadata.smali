.class public Lcom/amazonaws/services/s3/S3ResponseMetadata;
.super Lcom/amazonaws/ResponseMetadata;
.source "S3ResponseMetadata.java"


# static fields
.field public static final HOST_ID:Ljava/lang/String; = "HOST_ID"


# direct methods
.method public constructor <init>(Lcom/amazonaws/ResponseMetadata;)V
    .locals 0
    .param p1, "originalResponseMetadata"    # Lcom/amazonaws/ResponseMetadata;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Lcom/amazonaws/ResponseMetadata;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getHostId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/S3ResponseMetadata;->metadata:Ljava/util/Map;

    const-string v1, "HOST_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
