.class public abstract LtL;
.super Lte;
.source "SourceFile"


# instance fields
.field protected d:Lua;

.field protected e:LtZ;

.field protected f:Lcom/kms/licensing/iapurchase/BillingService;

.field protected g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lua;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lte;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LtL;->g:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, LtL;->d:Lua;

    .line 23
    new-instance v0, Lcom/kms/licensing/iapurchase/BillingService;

    invoke-direct {v0}, Lcom/kms/licensing/iapurchase/BillingService;-><init>()V

    iput-object v0, p0, LtL;->f:Lcom/kms/licensing/iapurchase/BillingService;

    .line 24
    iget-object v0, p0, LtL;->f:Lcom/kms/licensing/iapurchase/BillingService;

    invoke-virtual {v0, p2}, Lcom/kms/licensing/iapurchase/BillingService;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method
