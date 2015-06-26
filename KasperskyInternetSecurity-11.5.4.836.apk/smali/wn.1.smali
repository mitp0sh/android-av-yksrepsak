.class public final Lwn;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kms/ucp/UcpEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-void
.end method
