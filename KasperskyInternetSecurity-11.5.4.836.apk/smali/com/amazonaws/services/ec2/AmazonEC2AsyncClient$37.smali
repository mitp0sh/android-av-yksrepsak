.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeSecurityGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describeSecurityGroupsRequest:Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)V
    .locals 0

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;->val$describeSecurityGroupsRequest:Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;->val$describeSecurityGroupsRequest:Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeSecurityGroups(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;

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
    .line 1737
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;->call()Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;

    move-result-object v0

    return-object v0
.end method
