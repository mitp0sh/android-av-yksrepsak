.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describeInstanceAttributeRequest:Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)V
    .locals 0

    .prologue
    .line 3940
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;->val$describeInstanceAttributeRequest:Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;->val$describeInstanceAttributeRequest:Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeInstanceAttribute(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;

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
    .line 3940
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;->call()Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;

    move-result-object v0

    return-object v0
.end method
