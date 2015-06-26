.class final LtT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LtS;


# direct methods
.method constructor <init>(LtS;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, LtT;->a:LtS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, LtT;->a:LtS;

    iget-object v0, v0, LtS;->f:Lcom/kms/licensing/iapurchase/BillingService;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/kms/licensing/iapurchase/BillingService;->a(Ljava/lang/String;)Z

    .line 26
    return-void
.end method
