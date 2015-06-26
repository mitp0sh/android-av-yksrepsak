.class public final Ltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    .line 12
    invoke-static {}, LsQ;->l()Lcom/kms/licensing/ActivationType;

    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    sget-object v1, Lcom/kms/licensing/ActivationType;->KPC:Lcom/kms/licensing/ActivationType;

    invoke-static {v1}, LsQ;->a(Lcom/kms/licensing/ActivationType;)V

    .line 18
    :cond_0
    invoke-interface {v0, p1, v2, v2}, LsY;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 19
    return-void
.end method
