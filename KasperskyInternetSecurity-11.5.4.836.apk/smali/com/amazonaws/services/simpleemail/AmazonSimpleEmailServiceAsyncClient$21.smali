.class Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;
.super Ljava/lang/Object;
.source "AmazonSimpleEmailServiceAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getIdentityVerificationAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

.field final synthetic val$getIdentityVerificationAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;->val$getIdentityVerificationAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;->val$getIdentityVerificationAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getIdentityVerificationAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;->call()Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;

    move-result-object v0

    return-object v0
.end method
