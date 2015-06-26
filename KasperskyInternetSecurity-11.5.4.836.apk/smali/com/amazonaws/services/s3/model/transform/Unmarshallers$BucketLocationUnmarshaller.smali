.class public final Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;
.super Ljava/lang/Object;
.source "Unmarshallers.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/Unmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BucketLocationUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;->unmarshall(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseBucketLocationResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "US"

    .line 128
    :cond_0
    return-object v0
.end method
