.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->resetSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)Ljava/util/concurrent/Future;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$resetSnapshotAttributeRequest:Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)V
    .locals 0

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;->val$resetSnapshotAttributeRequest:Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;->val$resetSnapshotAttributeRequest:Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->resetSnapshotAttribute(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)V

    .line 1595
    const/4 v0, 0x0

    return-object v0
.end method
