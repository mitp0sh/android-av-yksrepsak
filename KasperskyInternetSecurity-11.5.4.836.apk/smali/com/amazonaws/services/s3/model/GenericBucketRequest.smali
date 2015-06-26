.class public Lcom/amazonaws/services/s3/model/GenericBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenericBucketRequest.java"


# instance fields
.field private final bucket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucket:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucket:Ljava/lang/String;

    return-object v0
.end method
