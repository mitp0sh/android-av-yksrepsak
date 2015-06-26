.class public Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;
.super Lcom/amazonaws/ResponseMetadata;
.source "SimpleDBResponseMetadata.java"


# static fields
.field public static final BOX_USAGE:Ljava/lang/String; = "BOX_USAGE"


# direct methods
.method public constructor <init>(Lcom/amazonaws/ResponseMetadata;)V
    .locals 0
    .param p1, "originalResponseMetadata"    # Lcom/amazonaws/ResponseMetadata;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Lcom/amazonaws/ResponseMetadata;)V

    .line 55
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
    .line 42
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getBoxUsage()F
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;->metadata:Ljava/util/Map;

    const-string v2, "BOX_USAGE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "boxUsage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method
