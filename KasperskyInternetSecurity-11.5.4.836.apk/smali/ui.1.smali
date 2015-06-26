.class final Lui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Luh;


# direct methods
.method constructor <init>(Luh;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lui;->a:Luh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lui;->a:Luh;

    iget-object v0, v0, Luh;->f:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0}, Lcom/kms/licensing/iapurchase/BillingService;->a()Z

    .line 23
    return-void
.end method
