.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeRegionsAsync(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describeRegionsRequest:Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)V
    .locals 0

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;->val$describeRegionsRequest:Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;->val$describeRegionsRequest:Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeRegions(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;

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
    .line 1450
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;->call()Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;

    move-result-object v0

    return-object v0
.end method
