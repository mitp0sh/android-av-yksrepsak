.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->revokeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)Ljava/util/concurrent/Future;
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

.field final synthetic val$revokeSecurityGroupIngressRequest:Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V
    .locals 0

    .prologue
    .line 3541
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;->val$revokeSecurityGroupIngressRequest:Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;

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
    .line 3541
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;->call()Ljava/lang/Void;

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
    .line 3543
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;->val$revokeSecurityGroupIngressRequest:Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->revokeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V

    .line 3544
    const/4 v0, 0x0

    return-object v0
.end method
