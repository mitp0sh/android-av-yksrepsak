.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeLicensesAsync(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$describeLicensesRequest:Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)V
    .locals 0

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;->val$describeLicensesRequest:Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;->val$describeLicensesRequest:Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->describeLicenses(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;

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
    .line 2258
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;->call()Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;

    move-result-object v0

    return-object v0
.end method
