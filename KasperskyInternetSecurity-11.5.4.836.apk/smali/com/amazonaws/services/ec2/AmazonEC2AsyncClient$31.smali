.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->createReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$createReservedInstancesListingRequest:Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)V
    .locals 0

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;->val$createReservedInstancesListingRequest:Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;->val$createReservedInstancesListingRequest:Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->createReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;

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
    .line 1521
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;->call()Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;

    move-result-object v0

    return-object v0
.end method
