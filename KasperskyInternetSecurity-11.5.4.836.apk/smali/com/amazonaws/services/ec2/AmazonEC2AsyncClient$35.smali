.class Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;
.super Ljava/lang/Object;
.source "AmazonEC2AsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->importVolumeAsync(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

.field final synthetic val$importVolumeRequest:Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;->val$importVolumeRequest:Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;->this$0:Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;->val$importVolumeRequest:Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->importVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/services/ec2/model/ImportVolumeResult;

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
    .line 1661
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;->call()Lcom/amazonaws/services/ec2/model/ImportVolumeResult;

    move-result-object v0

    return-object v0
.end method
